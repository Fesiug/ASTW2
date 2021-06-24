ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Flash Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_eq_stungrenade.mdl"
ENT.FuseTime = 2.5
ENT.ArmTime = 0
ENT.ImpactFuse = false

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
            phys:SetMass( 1 )
            phys:SetBuoyancyRatio(0)
        end

        self.kt = CurTime() + self.FuseTime
        self.at = CurTime() + self.ArmTime
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_hard" .. math.random(1,3) .. ".wav"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_soft" .. math.random(1,3) .. ".wav"))
        end

        if self.at <= CurTime() and self.ImpactFuse then
            self:Detonate()
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