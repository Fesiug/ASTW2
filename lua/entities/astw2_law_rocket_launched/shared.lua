ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "LAW Round"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_missile_launch.mdl"
ENT.FuseTime = 30
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
            phys:EnableGravity( false )
        end

        self.kt = CurTime() + self.FuseTime
        self.at = CurTime() + self.ArmTime
        self.motorsound = CreateSound( self, "weapons/rpg/rocket1.wav")
        self.motorsound:Play()
    end
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

function ENT:Think()
    if SERVER then
        local phys = self:GetPhysicsObject()
        phys:ApplyForceCenter( self:GetAngles():Forward() * 600 )

        if CurTime() >= self.kt then
            self:Detonate()
        end
    end

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
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            util.Effect( "Explosion", effectdata)
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

        util.BlastDamage(self, attacker, self:GetPos(), 128, 200)

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()

        cam.Start3D() -- Start the 3D function so we can draw onto the screen.
            render.SetMaterial( Material("effects/blueflare1") ) -- Tell render what material we want, in this case the flash from the gravgun
            render.DrawSprite( self:GetPos(), math.random(200, 300), math.random(200, 300), Color(255, 200, 175) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
        cam.End3D()
    end
end