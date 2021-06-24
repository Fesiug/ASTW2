function SWEP:OnInitialize()
end

function SWEP:Initialize()
    if self.Owner:IsNPC() then
        if self.HoldType_Aim == "revolver" or self.HoldType_Aim == "pistol" then
            if self.Owner:GetClass() == "npc_citizen" then
                self:SetHoldType( "pistol" )
            else
                if self.Owner:GetClass() == "npc_metropolice" then
                    self:SetHoldType( "smg" )
                else
                    self:SetHoldType( "ar2" )
                end
            end
        else
            if self.Owner:GetClass() == "npc_metropolice" then
                self:SetHoldType( "pistol" )
            else
                self:SetHoldType( "ar2" )
            end
        end
        if self.Primary.ClipSize == -1 then
            self.Primary.ClipSize = 100
        end
        self.IsFromNPC = true
        self.NextPrimaryFire = 0
        if SERVER then
            if self.WeaponIsShield then
                self:CreateWeaponShield()
            end
        end
    else

        if CLIENT then
            // Create a new table for every weapon instance
            self.WElements = table.FullCopy( self.WElements )
            self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )

            self:CreateModels(self.WElements) // create worldmodels
        end

    end
    self.EID = self:EntIndex()
    if GetConVar("astw2_infammo"):GetBool() or GetConVar("astw2_npcs_spawnready"):GetBool() then
        self:SetClip1( self.Primary.ClipSize )
    end

    self:OnInitialize()
end

function SWEP:OnDeploy()
end

function SWEP:Deploy()
    if !self.Owner:IsValid() then return end
    if self.Owner:IsNPC() then
    return end
    self:SetHoldType( self.HoldType_Lowered )
    self:SetNWBool( "insights", false )
    self:SetNWBool( "insprint", false )
    self.Owner = self:GetOwner()

    if self.Sound_Draw then
        self:EmitSound( self.Sound_Draw )
    end

    self:SetNWBool( "primed", false )
    self:SetNWBool( "inreload", false )
    self:SetNWFloat( "Heat", 0 )
    if self.BurstLength > 1 then
        self:SetNWInt( "burst", 0 )
    end

    if CLIENT or game.SinglePlayer() then
        self.Recoil = 0
        self.RecoilDir = 0
        self.LastRaiseTime = 0
        self.RestDeployed = false
        self.NextRest = CurTime()
    end

    self:SetShouldHoldType()

    if SERVER then
        self.swingTime = 0
        self.inSwing = false

        if self.WeaponIsShield then
            self:CreateWeaponShield()
        end
    end

    self.Owner:DrawViewModel(false)
    self:OnDeploy()

    if self.Sound_Equip then
        self:EmitSound(self.Sound_Equip)
    end

    self:SetNextPrimaryFire( CurTime() + self.DeployTime )

	return true
end

function SWEP:OnDrop()
    self:Holster()

    if self.IsFromNPC then
        self:SetClip1( math.random(math.ceil(self.Primary.ClipSize * 0.9), self.Primary.ClipSize) )

        if GetConVar("astw2_removenpcweapons"):GetBool() then
            self:Remove()
        end
    end
end

function SWEP:OnRemove()
    self:Holster()
end

function SWEP:GetUniqueFiremode()
    return self.UniqueFiremode
end

function SWEP:OnHolster()
end

function SWEP:Holster()
    if !self.Owner:IsValid() then return end
    if self.Owner:IsNPC() then return end
    local timers = {
        "astw2_reload",
        "astw2_shelleject",
        "astw2_reloadsound_1",
        "astw2_reloadsound_2",
        "astw2_reloadsound_3"
    }

    for i, k in pairs(timers) do
        timer.Remove( k .. self.EID )
    end

    if SERVER then
        self.inSwing = false

        if self.walkSpeed and self.runSpeed then
            self.Owner:SetWalkSpeed( self.walkSpeed )
            self.Owner:SetRunSpeed( self.runSpeed )
        end

        if IsValid(self.WeaponShieldEnt) then
            self.WeaponShieldEnt:Remove()
        end
    end

    if self.Sound_Holster then
        self:EmitSound( self.Sound_Holster )
    end

    self:OnHolster()

    self.Owner:DoAnimationEvent( ACT_HL2MP_GESTURE_RELOAD_ANGRY )

    return true
end