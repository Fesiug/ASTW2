ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "TNT"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_tnt.mdl"

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( true )
        self:SetUseType( SIMPLE_USE )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.dt = CurTime() + 30
        self.fusesound = CreateSound( self, "weapons/flaregun/burn.wav")
        self.fusesound:Play()
        self.fusesound:ChangePitch( 200, 30 )
    end
end

function ENT:OnTakeDamage()
    if SERVER then
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )
        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "Explosion", effectdata)
        end
        self.fusesound:Stop()
        self:Remove()
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        self:EmitSound( "weapons/c4/c4_plant.wav" )
        self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
        self:SetAngles( data.HitNormal:Angle() + Angle( -90, 0, 0 ) )
        self:SetPos( data.HitPos )
        self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
        self:SetMoveType( MOVETYPE_NONE )
        if !data.HitEntity:IsPlayer() and data.HitEntity:GetClass() != "worldspawn" then
            self:SetParent( data.HitEntity )
        end
    end
end

function ENT:Detonate()
    if SERVER then
        if not self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "astw2_c4_explode", effectdata)
        end

        util.BlastDamage(self, self.Owner, self:GetPos(), 512, 125)

        self.fusesound:Stop()
        self:Remove()
    end
end

function ENT:Think()
    if SERVER then
        if CurTime() >= self.dt then
            self:Detonate()
        end
    else
        local emitter = ParticleEmitter(self:GetPos())

        local smoke = emitter:Add("effects/spark", self:GetPos())
        smoke:SetVelocity( VectorRand() * 100 )
        smoke:SetGravity( Vector(0, 0, -400) )
        smoke:SetDieTime( math.Rand( 0.75, 1.25 ) )
        smoke:SetStartAlpha( 255 )
        smoke:SetStartSize( 1 )
        smoke:SetEndSize( 0 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-5,5) )
        smoke:SetColor( 255, 255, 255 )
        smoke:SetAirResistance( 5 )
        smoke:SetCollide( true )
        smoke:SetBounce( 0.25 )
        smoke:SetPos( self:GetPos() + (self:GetAngles():Forward() * 6) )
        smoke:SetLighting( false )

        emitter:Finish()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end