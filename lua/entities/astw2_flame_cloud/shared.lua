ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Fire Cloud"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

AddCSLuaFile()

function ENT:Initialize()
    if vFireInstalled then
        if SERVER then
            for i = 0,8 do
                CreateVFireBall(200, 15, self:GetPos(), VectorRand() * 500, self:GetOwner())
            end
            self:EmitSound("ambient/fire/gascan_ignite1.wav", 100)
            self:Remove()
        end
        return
    end

    if SERVER then
        self:SetModel( "models/weapons/w_eq_gasgrenade.mdl" )
        self:SetMoveType( MOVETYPE_NONE )
        self:SetSolid( SOLID_NONE )
        self:DrawShadow( false )
        self:EmitSound("ambient/fire/gascan_ignite1.wav", 100)
    else
        local light = DynamicLight(self:EntIndex())
        if (light) then
            light.Pos = self:GetPos()
            light.r = 255
            light.g = 135
            light.b = 0
            light.Brightness = 8
            light.Decay = 10
            light.Size = 512
            light.DieTime = CurTime() + 10.5
        end

        self.ticks = 0
    end

    self.fusesound = CreateSound( self, "ambient/fire/fire_big_loop1.wav")
    self.fusesound:Play()

    self.dt = CurTime() + 10

end

function ENT:OnRemove()
    if vFireInstalled then return end
    self.fusesound:Stop()
end

function ENT:Think()
    if vFireInstalled then return end
    if CurTime() >= self.dt then
        if SERVER then
            self:Remove()
        end
    end

    if CLIENT then
        local emitter = ParticleEmitter(self:GetPos())

        self.ticks = self.ticks + 1

        if !self:IsValid() or self:WaterLevel() > 2 then return end

        local smoke = emitter:Add("sprites/flamelet" .. math.random(1, 5), self:GetPos())
        smoke:SetVelocity( VectorRand() * 100 )
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), -600) )
        smoke:SetDieTime( 0.75 )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 100 )
        smoke:SetEndSize( 0 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-2,2) )
        smoke:SetColor( 255, 255, 255 )
        smoke:SetAirResistance( 5 )
        smoke:SetCollide( true )
        smoke:SetPos( self:GetPos() + Vector(math.Rand(-150, 150), math.Rand(-150, 150), 16) )
        smoke:SetLighting( false )

        emitter:Finish()
    else
        local targets = ents.FindInSphere(self:GetPos(), 225)
        for _, k in pairs(targets) do
            if k != self and k:GetPos().z < self:GetPos().z + 64 then
                local damage = DamageInfo()
                damage:SetAttacker( self:GetOwner() )
                damage:SetDamage( 5 )
                damage:SetDamageType( DMG_BURN )
                damage:SetInflictor( self )
                k:TakeDamageInfo( damage )
            end
        end
    end
end

function ENT:Draw()
    return false
end