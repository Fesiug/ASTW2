ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Rifle Stun Grenade"
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
        if self:WaterLevel() >= 1 then self:Remove() return end

        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        util.Effect( "astw2_flashbang_explosion", effectdata)

        self:EmitSound("weapons/flashbang/flashbang_explode2.wav", 150)

        local targets = ents.FindInSphere(self:GetPos(), 1024)

        for _, k in pairs(targets) do
            if k:IsPlayer() then
                local dp = (k:EyePos() - self:GetPos()):DotProduct(k:EyeAngles():Forward())
                if dp < 0.5 then
                    local time = Lerp( self:GetPos():Distance(k:GetPos()) / 1024, 2.5, 0.25 )
                    if self:Visible( k ) then
                        k:ScreenFade( SCREENFADE.IN, Color( 255, 255, 255, 255 ), 2.5, time )
                    end
                end
                k:SetDSP( 37, false )
            elseif k:IsNPC() then
                k:SetNPCState(NPC_STATE_PLAYDEAD)
                if timer.Exists( k:EntIndex() .. "_astw2_flashtimer" ) then
                    timer.Remove( k:EntIndex() .. "_astw2_flashtimer" )
                end
                timer.Create( k:EntIndex() .. "_astw2_flashtimer", 5.0, 1, function()
                    if !k:IsValid() then return end
                    k:SetNPCState(NPC_STATE_ALERT)
                end)
            end
        end

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end