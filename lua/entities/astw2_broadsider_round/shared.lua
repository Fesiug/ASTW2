ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Broadsider Round"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/props_phx/cannonball_solid.mdl"

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetModelScale( 0.2 )

        local radius = 3

        self:PhysicsInitSphere( radius )
        self:SetCollisionBounds( Vector(-radius -radius, -radius), Vector(radius, radius, radius) )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:SetMass( 5 )
            phys:SetDragCoefficient( -0.5 )
            phys:SetBuoyancyRatio(0)
            phys:Wake()
        end
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

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "astw2_c4_explode", effectdata)
        end

        self:EmitSound("weapons/mortar/mortar_explode2.wav",150,100)

        util.BlastDamage(self, self.Owner, self:GetPos(), 512, 125)

        self:Remove()

    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end