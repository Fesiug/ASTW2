local AddVel = Vector()

function EFFECT:Init(data)
    local quality = GetConVar("astw2_quality"):GetInt()
    if GetConVar("astw2_force_effect_minlevel_1"):GetBool() and quality == 0 then
        quality = 1
    end

    if quality == 0 then return end

    self.WeaponEnt = data:GetEntity()
    if !IsValid(self.WeaponEnt) then return end
    self.Owner = self.WeaponEnt:GetOwner()
    if !IsValid(self.Owner) then return end
    local dir = data:GetNormal()
    local scale = self.WeaponEnt.Primary.Damage * self.WeaponEnt.Primary.Num
    scale = scale * 0.025

    self.vOffset = self.WeaponEnt:GetBorePos()

    AddVel = self.WeaponEnt.Owner:GetVelocity()

    local emitter = ParticleEmitter(self.vOffset)

    if !self.WeaponEnt.Suppressed then
        local particle = emitter:Add("effects/combinemuzzle" .. math.random(1,2), self.vOffset)

        if (particle) then
            particle:SetVelocity(AddVel)
            particle:SetLifeTime(0)
            particle:SetDieTime(math.Rand(0.05 ,0.1))
            particle:SetStartAlpha(math.Rand(150, 200))
            particle:SetEndAlpha(0)
            particle:SetStartSize(math.Rand(5, 10))
            particle:SetEndSize(scale * math.Rand(25, 30))
            particle:SetLighting(false)
            particle:SetRoll(math.random(0, 360))
            particle:SetColor(255, 255, 255)
        end
    end

    if quality >= 3 then
        local particle = emitter:Add("sprites/heatwave", self.vOffset)

        if (particle) then
            particle:SetVelocity((dir * 25) + 1.05 * AddVel)
            particle:SetLifeTime(0)
            particle:SetDieTime(math.Rand(0.05 * scale, 0.1 * scale))
            particle:SetStartAlpha(255)
            particle:SetEndAlpha(0)
            particle:SetStartSize(math.Rand(8, 25))
            particle:SetEndSize(0)
            particle:SetRoll(math.Rand(0, 360))
            particle:SetRollDelta(math.Rand(-2, 2))
            particle:SetAirResistance(5)
            particle:SetGravity(Vector(0, 0, 40))
            particle:SetColor(255, 255, 255)
        end

        if !self.WeaponEnt.Suppressed then
            local light = DynamicLight(self:EntIndex())
            if (light) then
                light.Pos = self.vOffset
                light.r = 244
                light.g = 209
                light.b = 66
                light.Brightness = 2
                light.Decay = 2500
                light.Size = 128
                light.DieTime = CurTime() + 0.1
            end
        end
    end

    emitter:Finish()
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end