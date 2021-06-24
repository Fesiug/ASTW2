function SWEP:MeleeAttack()
    if self:GetNextPrimaryFire() > CurTime() then return end
    if self.Anim_Melee then
        self.Owner:DoAnimationEvent( self.Anim_Melee )
    else
        self.Owner:DoAnimationEvent( self.Anim_Shoot )
    end
    self:EmitSound( self.Melee_Sound )
    self:SetShouldHoldType()

    if SERVER then
        self.inSwing = true
        self.swingTime = CurTime() + self.Melee_SwingTime
        self.swingHit = false
    end

    if self.Special == "melee" then
        self:SetNextPrimaryFire( CurTime() + self.Melee_SwingTime )
    else
        self:SetNextPrimaryFire( CurTime() + self.Melee_SwingTime + 0.25 )
    end
end

function SWEP:OnMeleeHit( mtr )
end

function SWEP:MeleeHit( mtr )
    local ang = self:GetHandAng() + self.Melee_Trace_Offset

    local dmg = self.Primary.Damage
    if self.Melee_Damage then
        dmg = self.Melee_Damage
    end
    dmg = dmg * GetConVar("astw2_damagemult"):GetFloat()
    dmg = dmg * math.floor(math.Rand(1 - (self.Primary.DamageVariance * GetConVar("astw2_variance"):GetFloat()), 1 + (self.Primary.DamageVariance * GetConVar("astw2_variance"):GetFloat())))

    local d = DamageInfo()
    d:SetDamage( dmg )
    d:SetDamageType( self.Melee_DamageType )
    d:SetAttacker( self.Owner )
    d:SetInflictor( self )
    d:SetDamageForce( ang:Forward() * 128 )
    d:SetReportedPosition( mtr.HitPos )
    d:SetDamagePosition( mtr.HitPos )
    mtr.Entity:TakeDamageInfo( d )

    if mtr.Entity:IsPlayer() or mtr.Entity:IsNPC() then
        sound.Play( self.Melee_HitHumanSound, mtr.HitPos )
    else
        local decal = self.Melee_Decal

        if !decal then
            if self.Melee_DamageType == DMG_SHOCK then
                decal = "SmallScorch"
            elseif self.Melee_DamageType == DMG_SLASH then
                decal = "ManhackCut"
            end
        end

        util.Decal( decal, mtr.HitPos + (mtr.Normal * 10), mtr.HitPos - (mtr.Normal * 10), self.Owner )
        sound.Play( self.Melee_HitSound, mtr.HitPos )
    end

    self:OnMeleeHit( mtr )
end

function SWEP:MeleeThink()
    if SERVER and self.inSwing then
        local pos = self:GetHandPos()
        local ang = self:GetHandAng() + self.Melee_Trace_Offset
        local filters = self.Owner
        if self.WeaponIsShield then
            filters = { self.Owner, self.WeaponShieldEnt }
        end
        local mtr = util.TraceHull({
            start = pos,
            endpos = pos + (ang:Up() * self.Melee_Range) + (ang:Forward() * self.Melee_Range_Forward),
            mins = Vector(-2, -2, -2),
            maxs = Vector(2, 2, 2),
            filter = filters,
            mask = MASK_SHOT
        })

        if mtr.Hit then
            self.inSwing = false
            self:MeleeHit( mtr )
        end

        if self.swingTime < CurTime() then
            self.inSwing = false
        end
    end
end