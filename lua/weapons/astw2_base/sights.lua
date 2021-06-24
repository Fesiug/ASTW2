function SWEP:SetShouldHoldType()
    if self:GetNWBool( "insights", false ) then
        local holdtype = self.HoldType_Aim

        if GetConVar("astw2_rootintootin"):GetBool() and holdtype == "revolver" then
            holdtype = "pistol"
        end

        self:SetHoldType( holdtype )
    else
        local holdtype = self.HoldType_Lowered

        if GetConVar("astw2_hipfire"):GetBool() and !self.NeverHipfire then
            if self.Melee or self.ProjectileIsGrenade then
                holdtype = self.HoldType_Aim
            elseif self.HoldType_Aim == "ar2" then
                holdtype = "shotgun"
            elseif self.HoldType_Aim == "smg" then
                holdtype = "shotgun"
            elseif self.HoldType_Aim == "rpg" then
                holdtype = "crossbow"
            elseif self.HoldType_Aim == "revolver" then
                holdtype = "pistol"
            else
                holdtype = self.HoldType_Aim
            end

            if self.HoldType_Hipfire or self.Special == "ubgl" then
                holdtype = self.HoldType_Hipfire
            end
        else
            if self.Special == "ubgl" then
                holdtype = self.HoldType_Hipfire
            end
        end

        if self.ProjectileIsGrenade then
            holdtype = "slam"
        end

        if self:GetNWBool( "insprint", false ) then
            holdtype = self.HoldType_Lowered
        end

        self:SetHoldType( holdtype )
    end
end

function SWEP:Raise()
    self:SetNWBool( "insights", true )
    if self.Magnification then
        self.Owner:SetFOV( 90 / self.Magnification, 0.25 )
    end
    self:SetShouldHoldType()

    if !GetConVar("astw2_hipfire"):GetBool() or self.NeverHipfire and self:GetNextPrimaryFire() < CurTime() + self.DeployTime then
        self:SetNextPrimaryFire( CurTime() + self.DeployTime )
    end

    if SERVER then
        if GetConVar("astw2_speedmult_enabled"):GetBool() then
            self.runSpeed = self.Owner:GetRunSpeed()
            self.walkSpeed = self.Owner:GetWalkSpeed()

            local newspeed = self.walkSpeed * GetConVar("astw2_speedmult"):GetFloat() * self.SpeedMult
            if self.IgnoreSpeedMult then
                newspeed = self.walkSpeed * self.SpeedMult
            end

            self.Owner:SetWalkSpeed( newspeed )
            self.Owner:SetRunSpeed( newspeed )
        end
    else
        self.last_aimvector = self.Owner:GetAimVector() - Vector(0, 0, 128)
        self.LastRaiseTime = CurTime()
    end
end

function SWEP:Lower()
    self:SetNWBool( "insights", false )
    self:SetNWBool( "primed", false )
    if self.Magnification then
        self.Owner:SetFOV( 0, 0.25 )
    end
    self:SetShouldHoldType()

    if SERVER then
        if GetConVar("astw2_speedmult_enabled"):GetBool() and self.walkSpeed and self.runSpeed then
            self.Owner:SetWalkSpeed( self.walkSpeed )
            self.Owner:SetRunSpeed( self.runSpeed )
        end
    else
        self.LastRaiseTime = CurTime()
    end
end

function SWEP:IsSprintingRobust()
    return self.Owner:IsSprinting()
end

function SWEP:SightsThink()
    if GetConVar("astw2_toggle"):GetBool() then
        if (self.Owner:KeyPressed( IN_ATTACK2 )) then
            if !self:GetNWBool( "insights", true ) then
                self:Raise()
            else
                self:Lower()
            end
        end
        if self:IsSprintingRobust() and self:GetNWBool( "insights", true ) then
            self:Lower()
        end
    else
        if (self.Owner:KeyDown( IN_ATTACK2 ) or GetConVar("astw2_always_active"):GetBool()) and !(self.Owner:KeyDown( IN_ATTACK2 ) and GetConVar("astw2_always_active"):GetBool()) and !self:IsSprintingRobust() then
            if !self:GetNWBool( "insights", true ) then
                self:Raise()
            end
        elseif self:GetNWBool( "insights", true ) then
            self:Lower()
        end
    end

    if GetConVar("astw2_hipfire"):GetBool() then
        if !self:IsSprintingRobust() and self:GetNWBool( "insprint", false ) then
            self:SetNWBool( "insprint", false )
            if self:GetNextPrimaryFire() < CurTime() + self.DeployTime then
                self:SetNextPrimaryFire( CurTime() + self.DeployTime )
            end
            self:SetShouldHoldType()
        elseif self:IsSprintingRobust() and !self:GetNWBool( "insprint", false ) then
            self:SetNWBool( "insprint", true )
            self:SetShouldHoldType()
        end
    end
end