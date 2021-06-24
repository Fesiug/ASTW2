ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Smoke Cloud"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( "models/weapons/w_eq_smokegrenade_thrown.mdl" )
        self:SetMoveType( MOVETYPE_NONE )
        self:SetSolid( SOLID_NONE )
        self:DrawShadow( false )
    end

    self:EmitSound( "weapons/smokegrenade/sg_explode.wav" )

    self.dt = CurTime() + 10
end



function ENT:Think()
    if CurTime() >= self.dt then
        if SERVER then
            local targets = ents.FindInSphere(self:GetPos(), 256)
            for _, k in pairs(targets) do
                if k:IsNPC() then
                    k:SetNPCState(NPC_STATE_IDLE)
                end
            end
        end
        if CLIENT then

            local emitter = ParticleEmitter(self:GetPos())

            for i = 0, 4 do
                local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
                smoke:SetVelocity( VectorRand() * 100 )
                smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(10, 15)) )
                smoke:SetDieTime( math.Rand( 2.5, 5 ) )
                smoke:SetStartAlpha( 255 )
                smoke:SetEndAlpha( 0 )
                smoke:SetStartSize( 250 )
                smoke:SetEndSize( 400 )
                smoke:SetRoll( math.Rand(-180, 180) )
                smoke:SetRollDelta( math.Rand(-0.2,0.2) )
                smoke:SetColor( 150, 150, 150 )
                smoke:SetAirResistance( 5 )
                smoke:SetPos( self:GetPos() + (VectorRand()*64) )
                smoke:SetLighting( false )
            end
            emitter:Finish()

        else

            self:Remove()

        end
    else
        if SERVER then
            local targets = ents.FindInSphere(self:GetPos(), 256)
            for _, k in pairs(targets) do
                if k:IsPlayer() then
                    local alpha = Lerp( self:GetPos():Distance(k:GetPos()) / 256, 255, 0 )
                    k:ScreenFade( SCREENFADE.IN, Color( 150, 150, 150, alpha ), 1.5, 0.25 )
                elseif k:IsNPC() then
                    k:SetNPCState(NPC_STATE_PLAYDEAD)
                end
            end
        end
    end

    if CLIENT then
        local emitter = ParticleEmitter(self:GetPos())

        if !self:IsValid() or self:WaterLevel() > 2 then return end

        local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
        smoke:SetVelocity( VectorRand() * 100 )
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-5, 15)) )
        smoke:SetDieTime( 0.5 )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 225 )
        smoke:SetStartSize( 250 )
        smoke:SetEndSize( 300 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 150, 150, 150 )
        smoke:SetAirResistance( 5 )
        smoke:SetPos( self:GetPos() + (VectorRand()*64) )
        smoke:SetLighting( false )
        emitter:Finish()
    end
end

function ENT:Draw()
    return false
end