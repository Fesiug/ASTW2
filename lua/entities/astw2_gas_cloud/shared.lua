ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Gas Cloud"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( "models/weapons/w_eq_gasgrenade.mdl" )
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
                smoke:SetColor( math.Rand( 220, 230 ), math.Rand( 245, 255 ), math.Rand( 145, 155 ) )
                smoke:SetAirResistance( 5 )
                smoke:SetPos( self:GetPos() + (VectorRand() * 64) )
                smoke:SetLighting( false )
            end
                emitter:Finish()

        else

            self:Remove()

        end
    end

    if CLIENT then
        local emitter = ParticleEmitter(self:GetPos())

        if !self:IsValid() or self:WaterLevel() > 2 then return end

        local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
        smoke:SetVelocity( VectorRand() * 100 )
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-5, 15)) )
        smoke:SetDieTime( 0.75 )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 250 )
        smoke:SetEndSize( 300 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( math.Rand( 220, 230 ), math.Rand( 245, 255 ), math.Rand( 145, 155 ) )
        smoke:SetAirResistance( 5 )
        smoke:SetPos( self:GetPos() + (VectorRand() * 64) )
        smoke:SetLighting( false )

        emitter:Finish()
    else
        local targets = ents.FindInSphere(self:GetPos(), 256)
        for _, k in pairs(targets) do
            if k:IsPlayer() or k:IsNPC() then
                if k:IsPlayer() and k:GetActiveWeapon():IsValid() and k:GetActiveWeapon().IsGasMask then return end
                local damage = DamageInfo()
                damage:SetAttacker( self:GetOwner() )
                damage:SetDamage( 10 )
                damage:SetDamageType( DMG_NERVEGAS )
                damage:SetInflictor( self )
                k:TakeDamageInfo( damage )
            end
        end
    end
end

function ENT:Draw()
    return false
end