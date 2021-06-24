ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Spud"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/props_phx/misc/potato.mdl"

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
            phys:SetMass( 1 )
            phys:SetDragCoefficient( -0.5 )
        end

        self.kt = CurTime() + 10
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("physics/flesh/flesh_squishy_impact_hard" .. math.random(1,4) .. ".wav"))
        end
    end
end

function ENT:Think()
    if SERVER and CurTime() >= self.kt then
        self:Detonate()
    end
end

function ENT:Detonate()
    if SERVER then
        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end