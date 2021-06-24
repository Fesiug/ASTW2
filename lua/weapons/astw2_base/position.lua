function SWEP:GetBorePos()
    local bore = self:GetAttachment(1)
    local shootpos = self.Owner:EyePos()

    if bore then
        shootpos = bore.Pos
    else
        shootpos = self.Owner:LookupBone("ValveBiped.Bip01_R_Hand")
        if shootpos != 0 then
            local pos, ang = self.Owner:GetBonePosition(shootpos)
            shootpos = pos
        else
            // what the fuck
            shootpos = self.Owner:EyePos()
        end
    end

    if self.MuzzlePosOverride then
        local hand = self.Owner:LookupBone("ValveBiped.Bip01_R_Hand")
        local pos, ang = self.Owner:GetBonePosition( hand )
        shootpos = Vector(0, 0, 0)
        shootpos = pos + (ang:Right() * self.MuzzlePosOverride.x)
        shootpos = shootpos + (ang:Forward() * self.MuzzlePosOverride.y)
        shootpos = shootpos + (ang:Up() * self.MuzzlePosOverride.z)
    end

    return shootpos
end

function SWEP:GetHandPos()
    local shootpos = self.Owner:LookupAttachment( "Anim_Attachment_RH" )

    if shootpos != 0 then
         local pos = self.Owner:GetAttachment(shootpos).Pos
         local ang = self.Owner:GetAttachment(shootpos).Ang
         shootpos = pos + (ang:Up() * 4)
    else
        shootpos = self.Owner:LookupBone("ValveBiped.Bip01_R_Hand")
        if shootpos != 0 then
            local pos, shootang = self.Owner:GetBonePosition(shootpos)
            shootpos = pos + (shootang:Up() * 4)
        end
    end

    return shootpos
end

function SWEP:GetHandAng()
    local shootang = self.Owner:LookupAttachment( "Anim_Attachment_RH" )
    local x = nil

    if shootang != 0 then
        shootang = self.Owner:GetAttachment(shootang).Ang
    else
        shootang = self.Owner:LookupBone("ValveBiped.Bip01_R_Hand")
        if shootang != 0 then
            x, shootang = self.Owner:GetBonePosition(shootang)
        else
            // what the fuck
            shootang = self.Owner:EyeAngles()
        end
    end

    return shootang
end

function SWEP:ASTWIsRested()
    if !self:GetNWBool("insights", false) then return false end
    if !GetConVar("astw2_resting"):GetBool() then return false end
    if !self.CanRest then return false end

    local pos = self:GetBorePos()
    local pos2 = self:GetHandPos()
    if self.Bipod then
        depth = -32
    end
    local tr = util.TraceHull({
        start = pos,
        endpos = pos2,
        filter = self.Owner,
        maxs = Vector(16, 16, 16),
        mins = Vector(-16, -16, -16),
        mask = MASK_SOLID
    })

    if tr.Hit then
        return true
    else
        return false
    end
end

function SWEP:GetShootPosASTW()
    return self:GetHandPos()
end