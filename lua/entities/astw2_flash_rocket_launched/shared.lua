ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "FLASH Round"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_bazooka_rocket.mdl"
ENT.FuseTime = 30
ENT.ArmTime = 0.2

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
        self.motorsound = CreateSound( self, "weapons/rpg/rocket1.wav")
    end

    self.at = CurTime() + self.ArmTime
    self.Armed = false
end

function ENT:OnRemove()
    if SERVER then
        self.motorsound:Stop()
    end
end


function ENT:PhysicsCollide(data, physobj)
    if self.at <= CurTime() then
        self:Detonate()
    elseif self.at > CurTime() then
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )
        util.Effect( "RPGShotDown", effectdata)
        util.Effect( "StunstickImpact", effectdata)
        self:Remove()
    end
end

function ENT:Arm()
    if SERVER then
        self.motorsound:Play()
    end
end

function ENT:Think()

    if CurTime() >= self.at and !self.Armed then
        self:Arm()
        self.Armed = true
    end

    if SERVER then

        if self.Armed then
            local phys = self:GetPhysicsObject()
            phys:ApplyForceCenter( self:GetAngles():Forward() * 500 )
        end

        if CurTime() >= self.kt then
            self:Detonate()
        end
    end

    if CLIENT then
        if self.Armed then
            local emitter = ParticleEmitter(self:GetPos())

            if !self:IsValid() or self:WaterLevel() > 2 then return end

            local smoke = emitter:Add("sprites/flamelet" .. math.random(1, 5), self:GetPos())
            smoke:SetVelocity( VectorRand() * 5 )
            smoke:SetGravity( Vector(0, 0, 50) )
            smoke:SetDieTime( math.Rand(0.5, 1) )
            smoke:SetStartAlpha( 255 )
            smoke:SetEndAlpha( 0 )
            smoke:SetStartSize( 25 )
            smoke:SetEndSize( 0 )
            smoke:SetRoll( math.Rand(-180, 180) )
            smoke:SetRollDelta( math.Rand(-2,2) )
            smoke:SetColor( 255, 255, 255 )
            smoke:SetAirResistance( 5 )
            smoke:SetCollide( true )
            smoke:SetPos( self:GetPos() )
            smoke:SetLighting( false )
        end
    end
end

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end

        if self:WaterLevel() < 1 then
            local cloud = ents.Create( "astw2_flame_cloud" )
            if !IsValid( cloud ) then return end
            cloud:SetPos( self:GetPos() )
            cloud:DropToFloor()
            cloud:SetOwner(self.Owner)
            cloud:Spawn()
        end

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()

        if self.Armed then
            cam.Start3D() -- Start the 3D function so we can draw onto the screen.
                render.SetMaterial( Material("effects/blueflare1") ) -- Tell render what material we want, in this case the flash from the gravgun
                render.DrawSprite( self:GetPos(), math.random(200, 300), math.random(200, 300), Color(255, 145, 25) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
            cam.End3D()
        end
    end
end