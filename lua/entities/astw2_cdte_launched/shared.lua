ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "CDTE Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/p_k98_rg_grenade.mdl"
ENT.FuseTime = 7.5
ENT.ArmTime = 0.1

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
            phys:AddAngleVelocity( Angle(90, 0, 0):Forward() * 1000 )
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
            phys:ApplyForceCenter( Vector(0, 0, 50) )

        if CurTime() >= self.at then
            local targets = ents.FindInSphere(self:GetPos(), 256)
            for _, k in pairs(targets) do
                if k:IsPlayer() or k:IsNPC() then
                    if self:Visible( k ) and k:Health() > 0 then
                        self:Detonate()
                    end
                elseif (k:IsValid() and scripted_ents.IsBasedOn( k:GetClass(), "base_nextbot" )) then
                    self:Detonate()
                end
            end
        end

        if CurTime() >= self.kt then
            self:Detonate()
        end
    end

    if CLIENT then
        local emitter = ParticleEmitter(self:GetPos())

        if !self:IsValid() or self:WaterLevel() > 2 then return end

        local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke:SetVelocity( self:GetAngles():Forward() * 100 )
        smoke:SetDieTime( math.Rand(0.5,0.75) )
        smoke:SetStartAlpha( 255 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 5 )
        smoke:SetEndSize( 20 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 150, 150, 150 )
        smoke:SetAirResistance( 50 )
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

        util.BlastDamage(self, attacker, self:GetPos(), 350, 85)

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end