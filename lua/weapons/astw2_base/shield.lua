function SWEP:CreateWeaponShield()

    local hand = self.Owner:LookupBone("ValveBiped.Bip01_R_Hand")
    local pos, ang = self.Owner:GetBonePosition( hand )
    shieldpos = Vector(0, 0, 0)
    shieldpos = pos + (ang:Right() * self.ShieldPosOverride.x)
    shieldpos = shieldpos + (ang:Forward() * self.ShieldPosOverride.y)
    shieldpos = shieldpos + (ang:Up() * self.ShieldPosOverride.z)

    self.WeaponShieldEnt = ents.Create( "physics_prop" )
    self.WeaponShieldEnt:SetModel( self.WorldModel )
    self.WeaponShieldEnt:FollowBone( self.Owner, self.Owner:LookupBone("ValveBiped.Bip01_R_Hand") )
    self.WeaponShieldEnt:SetPos( shieldpos )
    self.WeaponShieldEnt:SetAngles( self.Owner:GetAngles() + self.ShieldAngOverride )
    self.WeaponShieldEnt:SetCollisionGroup( COLLISION_GROUP_WORLD )
    self.WeaponShieldEnt:SetColor( Color(0, 0, 0, 0) )
    if GetConVar( "astw2_seeshieldcollision" ):GetBool() then
        self.WeaponShieldEnt:SetRenderMode( RENDERMODE_NORMAL )
    else
        self.WeaponShieldEnt:SetRenderMode( RENDERMODE_NONE )
    end
    self.WeaponShieldEnt:Spawn()
end

function SWEP:ProcessWeaponShield()
    if !self.WeaponIsShield then return end

    if !IsValid(self.WeaponShieldEnt) then
        self:CreateWeaponShield()
    end
end