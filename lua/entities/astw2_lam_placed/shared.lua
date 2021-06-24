ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "LAM"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_slam.mdl"

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
    if SERVER and !self.Armed then
        self:EmitSound( "weapons/c4/c4_plant.wav" )
        self:SetAngles( data.HitNormal:Angle() + Angle( -90, 0, 0 ) )
        self:SetPos( data.HitPos + (data.HitNormal * -2) )
        self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
        self:SetMoveType( MOVETYPE_NONE )
        if !data.HitEntity:IsPlayer() and data.HitEntity:GetClass() != "worldspawn" then
            self:SetParent( data.HitEntity )
        end

        self.st = CurTime() + 1.0
        self.armtime = CurTime() + 1.0
        self.Armed = true
    end
end

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "Explosion", effectdata)
        end

        util.BlastDamage(self, self.Owner, self:GetPos(), 128, 85)

        self:Remove()

    end
end

function ENT:Think()
    if SERVER then

        if self.Armed and CurTime() >= self.st then
            self:EmitSound( "weapons/c4/c4_beep1.wav", 75, 85 )
            self.st = CurTime() + 3
        end

        if self.Armed and self.armtime < CurTime() then

            local tr = util.TraceLine({
                start = self:GetPos(),
                endpos = self:GetPos() + (self:GetAngles():Up() * 256),
                filter = {self},
                mask = MASK_ALL
            })

            if tr.Entity:IsNPC() or tr.Entity:IsPlayer() then
                self:Detonate()
            end

        end

    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end