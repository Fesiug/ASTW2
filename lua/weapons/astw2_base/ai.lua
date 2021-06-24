
function SWEP:AI_Reload()

    if !IsValid(self) or !IsValid(self.Owner) then
        return
    end

    if self:Clip1() > 0 then return end

    local owner = self.Owner

    if owner:IsNPC() and !owner:IsCurrentSchedule(SCHED_HIDE_AND_RELOAD) and !owner:IsCurrentSchedule(SCHED_RELOAD) and (owner:GetActivity() != ACT_RELOAD) then
        owner:SetSchedule(SCHED_HIDE_AND_RELOAD)
    end

end

function SWEP:AI_Projectile_Attack()
end

function SWEP:AI_PrimaryAttack()

    if self.Melee then
        return
    end

    if self:Clip1() <= 0 and self.Primary.ClipSize != -1 then
        self:AI_Reload()
        return
    end

    if self.NextPrimaryFire > CurTime() then return end

    if IsValid(self.Owner:GetEnemy()) then

        local burstcount = 1

        if self.Primary.Automatic then
            burstcount = math.random( 1, math.floor(self.Primary.ClipSize / 3) )
        end

        if self.Primary.ClipSize == -1 then
            burstcount = math.random( 1, math.floor(1/self.Primary.Delay/30) )
        end

        if self.BurstLength > 0 then
            burstcount = self.BurstLength
        end

        self.NextPrimaryFire = CurTime() + math.Rand( burstcount * self.Primary.Delay * 1.25, burstcount * self.Primary.Delay * 2.5 )
        self:SetNextPrimaryFire( self.NextPrimaryFire )

        for i = 1, burstcount do

        timer.Simple(i * self.Primary.Delay, function()

            if !IsValid(self) or !IsValid(self.Owner) or !IsValid(self.Owner:GetEnemy()) then
                return
            end

            if (self:Clip1() <= 0 and self.Primary.ClipSize != -1) then
                return
            end

            local owner = self.Owner
            local enemy = owner:GetEnemy()
            local targetPos = nil
            targetPos = enemy:WorldSpaceCenter()

            if self.TrueScope then
                if enemy:LookupBone("ValveBiped.Bip01_Head1") == nil then

                    targetPos = enemy:EyePos()

                else

                    targetPos = enemy:GetBonePosition(enemy:LookupBone("ValveBiped.Bip01_Head1"))

                end
            end

            targetPos = targetPos + (enemy:GetVelocity() * 0.25 * math.Rand(0, owner:GetCurrentWeaponProficiency()))

            local muzzlePos = self:GetBorePos()
            local direction = (targetPos - muzzlePos):GetNormalized()
            direction = direction
            local acc = self.Primary.Acc

            if !self.Bipod then
                acc = acc + math.Clamp(i * (self.Primary.RecoilAcc / 10000), 0, 0.5)
            end

            if !self.Primary.Automatic then
                if (math.random(1, 8) > owner:GetCurrentWeaponProficiency()) then
                    acc = acc * 10
                end
            else
                acc = acc * 1.5
            end

            local dmg = self.Primary.Damage
            dmg = dmg * GetConVar("astw2_damagemult"):GetFloat()
            dmg = dmg * math.floor(math.Rand(1 - (self.Primary.DamageVariance * GetConVar("astw2_variance"):GetFloat()), 1 + (self.Primary.DamageVariance * GetConVar("astw2_variance"):GetFloat())))

            if !GetConVar("astw2_npc_equalstanding"):GetBool() then
                if enemy:IsPlayer() then
                    dmg = dmg * 0.5
                    acc = acc * 2
                end
            end

            if self.Projectile and (self.Special != "ubgl" or math.random( 0, 4 ) == 0) then

                local spread = 5

                local inaccuracyX = math.random(-spread, spread)
                local inaccuracyY = math.random(-spread, spread)
                local inaccuracyZ = math.random(-spread, spread)
                local shootAngle = Vector(targetPos.x - muzzlePos.x + inaccuracyX, targetPos.y - muzzlePos.y + inaccuracyY, targetPos.z - muzzlePos.z + inaccuracyZ):GetNormalized()

                local rocket = ents.Create(self.Projectile)
                rocket:SetPos(muzzlePos)
                rocket:SetAngles(shootAngle:Angle() + self.ProjectileAngle)
                rocket:SetOwner(owner)
                rocket.Owner = owner
                rocket:Spawn()
                local phys = rocket:GetPhysicsObject()
                phys:ApplyForceCenter( shootAngle * self.ProjectileForce * 2 )

            else

                local nt = 1

                if self.TracerOverride then
                    nt = self.TracerOverride
                end

                local bulletInfo = {}
                bulletInfo.Attacker = owner
                bulletInfo.Damage = dmg
                bulletInfo.Force  = self.Primary.Damage / 3
                bulletInfo.Num = self.Primary.Num
                bulletInfo.Tracer = nt
                bulletInfo.TracerName = self.Tracer
                bulletInfo.Dir = direction
                bulletInfo.Spread = Vector(acc, acc, acc)
                bulletInfo.Src = muzzlePos
                bulletInfo.Callback = function( a, b, c )
                    if self.ExplosiveDamage > 0 then
                        local effectdata = EffectData()
                        effectdata:SetOrigin( b.HitPos )
                        util.Effect( "HelicopterMegaBomb", effectdata )
                        util.BlastDamage( self, self.Owner, b.HitPos, self.ExplosiveRadius, self.ExplosiveDamage )
                    end
                end

                owner:FireBullets(bulletInfo)

            end

            self:EmitSound( self.Sound, self.Sound_Vol, self.Sound_Pitch, 1, CHAN_WEAPON )
            if self.Sound_BoltAction then
                timer.Simple( self.Sound_BoltActionDelay, function() if !self.Owner:IsValid() or !self:IsValid() then return end self:EmitSound(self.Sound_BoltAction, 100, self.Sound_BoltActionPitch, 1, CHAN_AUTO) end)
            end

            local fx = EffectData()

            fx:SetEntity( self )
            fx:SetNormal( self.Owner:GetAimVector() )
            fx:SetAttachment( self:LookupAttachment( self.Effect_MuzzleAttachment ) )
            util.Effect( self.Effect_MuzzleFlash, fx )

            local delay = self.Effect_ShellDelay

            if delay == 0 and self.Sound_BoltAction then
                delay = self.Primary.Delay * 0.75
            end

            timer.Create( "astw2_shelleject" .. self.EID, delay, 1, function()
                if self.Owner:IsValid() then
                    local effectdata = EffectData()
                    effectdata:SetEntity(self)
                    effectdata:SetNormal(self.Owner:GetAimVector())
                    effectdata:SetAttachment(self.Effect_ShellAttachment)
                    util.Effect(self.Effect_ShellEject, effectdata)
                end
            end)

            self:TakePrimaryAmmo(self.BulletsPerShot)

        end)

        end

    end

end