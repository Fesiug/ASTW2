function SWEP:PrimaryAttack()

    if !self:IsValid() then return end
    if self.Owner:IsNPC() then
        self:AI_PrimaryAttack()
        return
    end
    if self:GetNextPrimaryFire() > CurTime() then return end
    if self:GetNWBool( "inreload", false ) then return end
    if self:GetNWBool( "primed", false ) then return end
    if self:IsSprintingRobust() then return end
    if !self:GetNWBool( "insights" ) then
        if self.Special == "detonator" then
            self:Detonator()
            return
        elseif self.Special == "unique" or self.Special == "uniquemixed" then
            self:SpecialAttack()
            return
        elseif self.Special == "ubgl" then
            self:Attack_UBGL()
            return
        elseif GetConVar("astw2_hipfire"):GetBool() and !self.NeverHipfire then
            // do nothing
        elseif self.Special == "melee" and GetConVar("astw2_bashing"):GetBool() then
            self:MeleeAttack()
            return
        else
            self:Reload()
            return
        end
    end
    if !self.Melee then
    if self.Primary.ClipSize != -1 and self:Clip1() < self.BulletsPerShot then self:Reload() return end
    if self.Primary.ClipSize == -1 and self:Ammo1() < self.BulletsPerShot and !(GetConVar("astw2_infammo"):GetBool() or self.InfAmmo) then return end
    else
    if self.inSwing then return end
    end
    if self.BurstLength > 1 then
        if self:GetNWInt( "burst", 0 ) > (self.BurstLength - 1) then return end
    end

    local avoid_recoil = false

    if self.Special == "uniqueaimed" or self.Special == "uniquemixed" then
        self:SpecialAttack()
        return
    elseif self.ProjectileIsGrenade then
        self:SetHoldType( self.HoldType_Throw )
        avoid_recoil = true
        self:SetNWBool( "primed", true )
        self:SetNextPrimaryFire( CurTime() + 0.25 )
    elseif self.Melee then
        if self.Melee_Swing then
            self:SetHoldType( self.HoldType_Throw )
            avoid_recoil = true
            self:SetNWBool( "primed", true )
            self:SetNextPrimaryFire( CurTime() + 0.25 )
        else
            self:MeleeAttack()
            avoid_recoil = true
            self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
        end
    elseif self.Projectile and self.Special != "ubgl" then
        self:FireProjectile()
    else
        self:ShootBullets()
    end

    if !avoid_recoil then

        local recoil_amount = self.Primary.Recoil / 100
        recoil_amount = recoil_amount * GetConVar("astw2_recoilmult"):GetFloat()
        local heat_amount = self.Primary.RecoilAcc * GetConVar("astw2_heatmult"):GetFloat()
        local recoil_angle = math.Rand( -1.0, 1.0 )

        if self:ASTWIsRested() then
            if self.Bipod then
                recoil_amount = recoil_amount * 0.1
                heat_amount = heat_amount * 0.1
            else
                recoil_amount = recoil_amount * 0.75
                heat_amount = heat_amount * 0.75
            end
        end

        self:SetNWFloat( "Heat", math.Clamp(self:GetNWFloat("Heat") + heat_amount, 0, self.Primary.MaxRecoilAcc) )
        self:EmitSound( self.Sound, self.Sound_Vol, self.Sound_Pitch, 1, CHAN_WEAPON )
        if SERVER then
            self:TakePrimaryAmmo(self.BulletsPerShot)
            if self.Sound_BoltAction then
                timer.Simple( self.Sound_BoltActionDelay, function() if !self:IsValid() then return end sound.Play(self.Sound_BoltAction, self:GetBorePos(), 100, self.Sound_BoltActionPitch, 1, CHAN_WEAPON) end)
            end
        end
        self.Owner:DoAnimationEvent( self.Anim_Shoot )

        if IsFirstTimePredicted() then
            self:FiringEffects()

            if CLIENT or game.SinglePlayer() then
                self.Recoil = recoil_amount
                self.RecoilDir = recoil_angle
                self.Owner:SetViewPunchAngles( Angle( math.random(-recoil_angle, recoil_angle), 1, math.random(-recoil_angle, recoil_angle)) * ((recoil_amount / 3) + (self:GetNWFloat("Heat") / 4000)) )
            end

        end

        if self.BurstLength > 1 then
            self:SetNWInt( "burst", self:GetNWInt("burst", 0) + 1 )
        end

        if self:Clip1() == 0 then
            self:SetNextPrimaryFire( CurTime() + 0.25 )
        else
            self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
        end

        if self:Ammo1() <= 0 and self.Disposable then
            self:Holster()
            self:Remove()
        end

    end

end

function SWEP:FireProjectile()
    if SERVER then
        local proj = ents.Create( self.Projectile )
        if ( !IsValid( proj ) ) then print("!!!FAILED TO CREATE PROJECTILE") return end
        proj:SetPos( self:GetBorePos() )
        proj:SetAngles( self.Owner:EyeAngles() + self.ProjectileAngle )
        proj:SetOwner( self.Owner )
        proj:SetNWEntity( "Owner", self.Owner )
        proj:Spawn()
        local phys = proj:GetPhysicsObject()
        local inacc =  Angle(math.Rand( -self.Primary.Acc, self.Primary.Acc ) * 360, math.Rand( -self.Primary.Acc, self.Primary.Acc ) * 360, math.Rand( -self.Primary.Acc, self.Primary.Acc ) * 360 )
        phys:ApplyForceCenter((( self.Owner:EyeAngles() + inacc ):Forward() * self.ProjectileForce) + self.Owner:GetAbsVelocity() )
        if self.ProjectileIsGrenade then
            phys:AddAngleVelocity( VectorRand() * 1000 )
        end
    end
end

function SWEP:Throw()
    if !self:IsValid() then return end
    self:SetNWBool( "primed", false )
    self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
    self:EmitSound( self.Sound, self.Sound_Vol, self.Sound_Pitch, 1, CHAN_WEAPON )
    self.Owner:DoAnimationEvent( self.Anim_Shoot )
    self:SetShouldHoldType()
    if !GetConVar("astw2_infammo"):GetBool() then
        self:TakePrimaryAmmo(self.BulletsPerShot)
    end
    self:FireProjectile()
    if self:Ammo1() <= 0 then
        self:Holster()
        self:Remove()
    end
end

function SWEP:ShootBullets()
    local nt = 1

    if self.TracerOverride != nil then
        nt = self.TracerOverride
    end

    local acc = self.Primary.Acc
    acc = acc + (self:GetNWFloat("Heat", 0) / 15000)

    if self.Primary.Num > 1 then
        acc = acc * GetConVar("astw2_accuracymult_shotgun"):GetFloat()
    else
        acc = acc * GetConVar("astw2_accuracymult"):GetFloat()
        if self:GetNWFloat("Heat", 0) <= 10E-5 and self.Owner:Crouching() then
            acc = acc * 0.5
        end
        if GetConVar("astw2_hipfire"):GetBool() and !self.NeverHipfire then
            acc = acc * 2
        end
    end

    local dmg = self.Primary.Damage
    dmg = dmg * GetConVar("astw2_damagemult"):GetFloat()
    dmg = dmg * math.floor(math.Rand(1 - (self.Primary.DamageVariance * GetConVar("astw2_variance"):GetFloat()), 1 + (self.Primary.DamageVariance * GetConVar("astw2_variance"):GetFloat())))

    local shootpos = self:GetShootPosASTW()

	
	if self:GetOwner():IsPlayer() then
		self:GetOwner():LagCompensation(true)
	end
    self:FireBullets({
    Attacker = self.Owner,
    Damage = dmg,
    Force = self.Primary.Damage / 3,
    Num = self.Primary.Num,
    Dir = (self.Owner:EyeAngles() + self.Fire_AngleOffset):Forward(),
    Src = shootpos,
    Tracer = nt,
    TracerName = self.Tracer,
    Spread 	= Vector( acc, acc, 0 ),
    Callback = function( a, b, c )
            if self.ExplosiveDamage > 0 then
                local effectdata = EffectData()
                effectdata:SetOrigin( b.HitPos )
                util.Effect( "HelicopterMegaBomb", effectdata )
                util.Decal( "Scorch", b.StartPos, b.HitPos )
                util.BlastDamage( self, self.Owner, b.HitPos, self.ExplosiveRadius, self.ExplosiveDamage )
            end
        end
    })
	if self:GetOwner():IsPlayer() then
		self:GetOwner():LagCompensation(false)
	end
end

function SWEP:Detonator()
    if self:GetNextPrimaryFire() > CurTime() then return end

    self:EmitSound( "weapons/slam/mine_mode.wav" )
    self.Owner:DoAnimationEvent( ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL )
    self.Owner:ConCommand("detonator_trigger")

    self:SetNextPrimaryFire( CurTime() + 0.25 )
end

function SWEP:FiringEffects()
    local fx = EffectData()

    fx:SetEntity( self )
    fx:SetNormal( self.Owner:GetAimVector() )
    fx:SetAttachment( self:LookupAttachment( self.Effect_MuzzleAttachment ) )
    util.Effect( self.Effect_MuzzleFlash, fx )

    local delay = self.Effect_ShellDelay

    if delay == 0 and self.Sound_BoltAction then
        delay = self.Primary.Delay * 0.75
    end

    if delay > 0 then
        if SERVER then
            timer.Create( "astw2_shelleject" .. self.EID, delay, 1, function()
                if self.Owner:IsValid() then
                    local effectdata = EffectData()
                    effectdata:SetEntity(self)
                    effectdata:SetNormal(self.Owner:GetAimVector())
                    effectdata:SetAttachment(self.Effect_ShellAttachment)
                    util.Effect(self.Effect_ShellEject, effectdata)
                end
            end)
        end
    else
        local effectdata = EffectData()
        effectdata:SetEntity(self)
        effectdata:SetNormal(self.Owner:GetAimVector())
        effectdata:SetAttachment(self.Effect_ShellAttachment)
        util.Effect(self.Effect_ShellEject, effectdata)
    end

end

function SWEP:SpecialAttack()
    // Put something special here
end