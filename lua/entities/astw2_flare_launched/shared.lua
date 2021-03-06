ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Flare Round"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_missile_launch.mdl"
ENT.FuseTime = 15
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
            phys:SetDragCoefficient(0.8)
            phys:SetMass(2)
        end

        self.Collided = false
    end

    self.kt = CurTime() + self.FuseTime
    self.at = CurTime() + self.ArmTime
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if self.Collided then return end
        if data.HitEntity != "worldspawn" then
            self.Collided = true
            local delta = math.Clamp((self.kt - CurTime())/self.FuseTime, 0.1, 1)
            if delta <= 0.25 then return end
            if data.HitEntity:IsNPC() then
                data.HitEntity:Ignite( delta * 15 )
            elseif data.HitEntity:IsPlayer() then
                data.HitEntity:Ignite( delta * 5 )
            end
        end
    end
end

function ENT:Think()
    if SERVER then
        if CurTime() >= self.kt then
            self:Detonate()
        end
    end

    if CLIENT then
        local emitter = ParticleEmitter(self:GetPos())
        local delta = math.Clamp((self.kt - CurTime())/self.FuseTime, 0.1, 1)

        if !self:IsValid() or self:WaterLevel() > 2 then return end

        local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
        smoke:SetVelocity( VectorRand() * 25 )
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(60, 85)) )
        smoke:SetDieTime( math.Rand(0.5,1.5) )
        smoke:SetStartAlpha( 255*delta )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 5 )
        smoke:SetEndSize( 100 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 200, 0, 0 )
        smoke:SetAirResistance( 5 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( false )
        emitter:Finish()
    end
end

function ENT:Detonate()
    self:Remove()
end

function ENT:Draw()
    if CLIENT then
        local delta = math.Clamp((self.kt - CurTime())/self.FuseTime, 0.1, 1)
        local minsize = 500*delta
        local maxsize = 600*delta
        cam.Start3D() -- Start the 3D function so we can draw onto the screen.
            render.SetMaterial( Material("effects/blueflare1") ) -- Tell render what material we want, in this case the flash from the gravgun
            render.DrawSprite( self:GetPos(), math.random(minsize, maxsize), math.random(minsize, maxsize), Color(255*delta, 0, 0) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
        cam.End3D()
    end
end