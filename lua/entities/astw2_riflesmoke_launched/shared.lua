ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Rifle Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/p_k98_rg_grenade.mdl"
ENT.FuseTime = 7.5
ENT.ArmTime = 0

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.kt = CurTime() + self.FuseTime
        self.at = CurTime() + self.ArmTime
        self.motorsound = CreateSound( self, "ambient/ambience/wind_light02_loop.wav")
        self.motorsound:Play()
    end
end

function ENT:OnRemove()
    if SERVER then
        self.motorsound:Stop()
    end
end

function ENT:PhysicsCollide(data, physobj)
    self:Detonate()
end

function ENT:Think()
    if CLIENT then
        local emitter = ParticleEmitter(self:GetPos())

        if !self:IsValid() or self:WaterLevel() > 2 then return end

        local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
        smoke:SetVelocity( VectorRand() * 25 )
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke:SetDieTime( math.Rand(0.5,0.75) )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 5 )
        smoke:SetEndSize( 20 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 150, 150, 150 )
        smoke:SetAirResistance( 5 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( true )
        emitter:Finish()
    end
end

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end

        if self:WaterLevel() < 1 then
            local cloud = ents.Create( "astw2_smoke_cloud" )
            if !IsValid( cloud ) then return end
            cloud:SetPos( self:GetPos() )
            cloud:Spawn()
        end

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end