function SWEP:OnReload()
end

function SWEP:Reload()
    if !self:IsValid() then return end
    if self.Owner:IsNPC() then
        self:AI_Reload()
        return
    end
    if self:GetNWBool( "inreload", false ) then return end
    if self.Primary.ClipSize == -1 then return end
    if self:Clip1() >= self.Primary.ClipSize and self.CannotChamber then return end
    if self:Clip1() >= self.Primary.ClipSize + 1 and !self.CannotChamber then return end
    if self:Ammo1() <= 0 and !(GetConVar("astw2_infammo"):GetBool() or self.InfAmmo) then return end
    self.Owner:DoAnimationEvent( self.Anim_Reload )
    self:SetNWBool( "inreload", true )
    self:SetNWFloat( "Heat", 0 )

    self:OnReload()

    if SERVER then
        if self.Anim_Reload == ACT_HL2MP_GESTURE_RELOAD_AR2 or self.Anim_Reload == ACT_HL2MP_GESTURE_RELOAD_SMG1 then
            timer.Create( "astw2_reloadsound_1" .. self.EID, 0.1, 1, function() if !self:IsValid() then return end sound.Play(self.Sound_Magout, self:GetBorePos()) end)
            timer.Create( "astw2_reloadsound_2" .. self.EID, 1.0, 1, function() if !self:IsValid() then return end sound.Play(self.Sound_Magin, self:GetBorePos()) end)
            if self:Clip1() <= 0 then
                timer.Create( "astw2_reloadsound_3" .. self.EID, 1.45, 1, function() if !self:IsValid() then return end sound.Play(self.Sound_Boltpull, self:GetBorePos()) end)
            end
        elseif self.Anim_Reload == ACT_HL2MP_GESTURE_RELOAD_PISTOL then
            timer.Create( "astw2_reloadsound_1" .. self.EID, 0.1, 1, function() if !self:IsValid() then return end sound.Play(self.Sound_Magout, self:GetBorePos()) end)
            timer.Create( "astw2_reloadsound_2" .. self.EID, 0.75, 1, function() if !self:IsValid() then return end sound.Play(self.Sound_Magin, self:GetBorePos()) end)
            if self:Clip1() <= 0 then
                timer.Create( "astw2_reloadsound_3" .. self.EID, 1.4, 1, function() if !self:IsValid() then return end sound.Play(self.Sound_Boltpull, self:GetBorePos()) end)
            end
        end
    end

    if CLIENT then
        self.RestDeployed = false
    end

    self:SetNextPrimaryFire( CurTime() + self.ReloadTime )
    timer.Create( "astw2_reload" .. self.EID, self.ReloadTime + 0.1, 1, function()
        if !self:IsValid() then return end

        local cs = self.Primary.ClipSize

        if self:Clip1() > 0 and !self.CannotChamber then
            cs = self.Primary.ClipSize + 1
        end

        local setclipto = math.Clamp( cs, 0, self:Ammo1() + self:Clip1() )
        local difference = setclipto - self:Clip1()

        if (GetConVar("astw2_infammo"):GetBool() or self.InfAmmo) then
            setclipto = cs
            difference = 0
        end

        self:SetClip1( setclipto )
        self.Owner:SetAmmo( math.Clamp( self:Ammo1() - difference, 0, self:Ammo1() ), self.Primary.Ammo )
        self:SetNWBool( "inreload", false )
    end)
end