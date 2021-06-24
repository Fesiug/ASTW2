ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Crossbow Bolt"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/crossbow_bolt.mdl"

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        local pb_vert = 8
        local pb_hor = 1

        self:PhysicsInitBox( Vector(-pb_vert,-pb_hor,-pb_hor), Vector(pb_vert,pb_hor,pb_hor) )

        self:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE_DEBRIS )
        self:SetCollisionBounds( Vector(-4 -4, -4), Vector(4, 4, 4) )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetMass( 1 )
            phys:SetBuoyancyRatio(0)
        end

        self.dt = CurTime() + 15

    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.HitEntity:GetClass() == "worldspawn" then
            local effectdata = EffectData()
                effectdata:SetOrigin( data.HitPos + (data.HitNormal * 4) )
                effectdata:SetAngles( data.HitNormal:Angle() )
            util.Effect( "ManhackSparks", effectdata)
            self:SetMoveType( MOVETYPE_NONE )
            self:SetAngles( data.OurOldVelocity:Angle() )
            self:SetPos( data.HitPos - (data.HitNormal * 8) )
            self:EmitSound( "weapons/crossbow/hit1.wav" )
            self.dt = CurTime() + 5
        else
            self:EmitSound( "weapons/crossbow/bolt_skewer1.wav" )
            local damage = DamageInfo()
            damage:SetAttacker( self.Owner )
            damage:SetDamage( 50 )
            damage:SetDamageType( DMG_SLASH )
            damage:SetInflictor( self )
            damage:SetReportedPosition( data.HitPos )
            damage:SetDamagePosition( data.HitPos )
            data.HitEntity:TakeDamageInfo( damage )
            self:Remove()
        end
    end
end



function ENT:Think()
    if SERVER then
        if CurTime() >= self.dt then
            self:Remove()
        end
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end