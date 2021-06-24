
function SWEP:OnThink()
end

function SWEP:Think()
    if !self:IsValid() then return end
    if self.Owner:IsNPC() then
    return end
    if !self.Owner:IsValid() then return end
    if !self.Owner:Alive() then return end
    if self.Owner:InVehicle() then return end

    if (CLIENT or game.SinglePlayer()) and IsFirstTimePredicted() and self.Recoil > 0 then
        local recoil_amt = self.Recoil * FrameTime() * 10
        self.Owner:SetEyeAngles( self.Owner:EyeAngles() - Angle( recoil_amt, recoil_amt * self.RecoilDir, 0 ) )
        self.Recoil = math.Clamp( self.Recoil - recoil_amt - 0.1, 0, 1000)
    end

    if CLIENT then
        if self.CanRest and self.RestDeployed and !self:ASTWIsRested() then
            self.RestDeployed = false
        elseif self.CanRest and self:ASTWIsRested() then
            self.RestDeployed = true
        end
    end

    if SERVER then

        self:MeleeThink()
        self:ProcessWeaponShield()

    end

    if !self.Owner:KeyDown( IN_ATTACK ) then
        self:SetNWFloat( "Heat", math.Clamp(self:GetNWFloat( "Heat" ) - (FrameTime() * self.Primary.RecoilRecovery), 0, self.Primary.MaxRecoilAcc))
        if self.BurstLength > 1 then
            self:SetNWInt( "burst", 0 )
        end
    end

    if self:GetNWBool( "primed", false ) and (self:GetNWBool( "insights", false ) or (GetConVar("astw2_hipfire"):GetBool() and !self.NeverHipfire)) and !self.Owner:KeyDown( IN_ATTACK ) and (self.ProjectileIsGrenade or self.Melee_Swing) and self:GetNextPrimaryFire() < CurTime() then
        if self.Melee_Swing then
            self:MeleeAttack()
            self:SetNWBool( "primed", false )
        else
            self:Throw()
        end
    end

    self:SightsThink()

    self:OnThink()

end