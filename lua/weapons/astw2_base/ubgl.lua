function SWEP:UBGLTakeAmmo()
    if !GetConVar("astw2_infammo"):GetBool() then
        self.Owner:SetAmmo( self:UBGLAmmo() - 1, self.UBGL_Ammo )
    end
end

function SWEP:UBGLAmmo()
    return self.Owner:GetAmmoCount( self.UBGL_Ammo )
end

function SWEP:Attack_UBGL()
    if self:UBGLAmmo() < 1 and !(GetConVar("astw2_infammo"):GetBool() or self.InfAmmo) then return end
    self:FireProjectile()
    self:EmitSound( self.UBGL_Sound )
    self:SetNextPrimaryFire( CurTime() + self.UBGL_Delay )
    self.Owner:DoAnimationEvent( self.UBGL_Anim )
    self:UBGLTakeAmmo()

    if SERVER then
        timer.Create( "astw2_reloadsound_1" .. self.EID, 0.1, 1, function() if !self:IsValid() then return end sound.Play(self.Sound_UBGL_1, self:GetBorePos()) end)
        timer.Create( "astw2_reloadsound_2" .. self.EID, 1.0, 1, function() if !self:IsValid() then return end sound.Play(self.Sound_UBGL_2, self:GetBorePos()) end)
        timer.Create( "astw2_reloadsound_3" .. self.EID, 1.45, 1, function() if !self:IsValid() then return end sound.Play(self.Sound_UBGL_3, self:GetBorePos()) end)
    end
end