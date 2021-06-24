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
        if CLIENT then

        local emitter = ParticleEmitter(self:GetPos())

        for i = 0, 3 do
            local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
            smoke:SetVelocity( VectorRand() * 100 )
            smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(10, 15)) )
            smoke:SetDieTime( math.Rand( 2.5, 5 ) )
            smoke:SetStartAlpha( 200 )
            smoke:SetEndAlpha( 0 )
            smoke:SetStartSize( 250 )
            smoke:SetEndSize( 400 )
            smoke:SetRoll( math.Rand(-180, 180) )
            smoke:SetRollDelta( math.Rand(-0.2,0.2) )
            smoke:SetColor( math.Rand( 50, 150 ), math.Rand( 0, 10 ), math.Rand( 15, 75 ) )
            smoke:SetAirResistance( 5 )
            smoke:SetPos( self:GetPos() + (VectorRand()*64) )
            smoke:SetLighting( false )
        end
        emitter:Finish()

    else

        self:Remove()

    end
    else
        local targets = ents.FindInSphere(self:GetPos(), 256)
        for _, k in pairs(targets) do
            if k:IsPlayer() or k:IsNPC() then
                local regen = FrameTime() * 100
                k:SetHealth( math.Clamp( k:Health() + regen, 0, k:GetMaxHealth() ) )
                if k:IsPlayer() then
                    local alpha = Lerp( self:GetPos():Distance(k:GetPos()) / 256, 100, 0 )
                    k:ScreenFade( SCREENFADE.IN, Color( 100, 5, 40, alpha ), 1.5, 0.25 )
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
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 250 )
        smoke:SetEndSize( 300 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( math.Rand( 50, 150 ), math.Rand( 0, 10 ), math.Rand( 15, 75 ) )
        smoke:SetAirResistance( 5 )
        smoke:SetPos( self:GetPos() + (VectorRand() * 64) )
        smoke:SetLighting( false )

        local particle = emitter:Add( "effects/spark", self:GetPos() ) 
        particle:SetVelocity( VectorRand() * 300 ) 
        particle:SetDieTime( math.Rand(1, 3) )
        particle:SetStartAlpha( 255 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(2, 4) )
        particle:SetEndSize( 0 )
        particle:SetRoll( math.Rand(0, 360) )
        particle:SetRollDelta( math.Rand(-5, 5) )
        particle:SetAirResistance( 150 )
        particle:SetGravity( Vector( 0, 0, -100 ) )
        particle:SetCollide( true )
        particle:SetPos( self:GetPos() + (VectorRand() * 128) + Vector( 0, 0, 128 ) )
        particle:SetBounce( 1 )
        particle:SetColor( 255, 255, 255 )

        emitter:Finish()
    end
end

function ENT:Draw()
    return false
end