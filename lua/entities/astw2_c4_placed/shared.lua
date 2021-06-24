ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "C4"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_c4.mdl"
ENT.Detonatable = true

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( true )
        self:SetUseType( CONTINUOUS_USE )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

    self.Armed = false

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
        self:Remove()
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        self:EmitSound( "weapons/c4/c4_plant.wav" )
        self:SetAngles( data.HitNormal:Angle() + Angle( -90, 0, 0 ) )
        self:SetPos( data.HitPos )
        self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
        self:SetMoveType( MOVETYPE_NONE )
        if !data.HitEntity:IsPlayer() and data.HitEntity:GetClass() != "worldspawn" then
            self:SetParent( data.HitEntity )
        end
    end
end

function ENT:DetonatorTrigger()
    if SERVER then
        self.Armed = true
        self.dt = CurTime() + 1
        self.st = CurTime()
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

        self:EmitSound("weapons/c4/c4_explode1.wav",100,100)

        util.BlastDamage(self, self.Owner, self:GetPos(), 512, 125)

        self:Remove()

    end
end

function ENT:Think()
    if SERVER then
        if !self.Armed then return end
        if CurTime() >= self.dt then
            self:Detonate()
        end

        if CurTime() >= self.st then
            self:EmitSound( "weapons/c4/c4_beep1.wav" )
            self.st = CurTime() + (( self.dt - CurTime() ) / 15)
        end
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end