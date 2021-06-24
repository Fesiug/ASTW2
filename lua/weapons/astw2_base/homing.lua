
function SWEP:GetHomingTrace()
    local tr = util.TraceLine({
        start = self:GetHandPos(),
        endpos = self:GetHandPos() + ((self.Owner:EyeAngles() + self.Fire_AngleOffset):Forward() * self.TrackingRange),
        mask = MASK_SHOT,
        filter = {self.Owner}
    })

    return tr
end

function SWEP:GetHomingTarget()
    local tr = self:GetHomingTrace()

    return tr.HitPos
end