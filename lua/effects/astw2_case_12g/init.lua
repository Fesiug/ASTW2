EFFECT.Sounds = {"weapons/fx/tink/shotgun_shell1.wav", "weapons/fx/tink/shotgun_shell2.wav", "weapons/fx/tink/shotgun_shell3.wav"}
EFFECT.Pitch = 100
EFFECT.Scale = 0.75
EFFECT.model = "models/weapons/Shotgun_shell.mdl"

EFFECT.SpawnTime = 0
function EFFECT:Init(data)

    if !IsValid(data:GetEntity()) then return end

    local angle, pos = self.Entity:GetBulletEjectPos(data:GetOrigin(), data:GetEntity(), data:GetAttachment())

    local direction = angle:Forward()
    local ang = LocalPlayer():GetAimVector():Angle()

    self.Entity:SetPos( pos )
    self.Entity:SetModel( self.model )
    self.Entity:SetModelScale( self.Scale )

    local pb_vert = 1 * self.Scale
    local pb_hor = 0.5 * self.Scale

    self.Entity:PhysicsInitBox( Vector(-pb_vert,-pb_hor,-pb_hor), Vector(pb_vert,pb_hor,pb_hor) )

    self.Entity:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE_DEBRIS )
    self.Entity:SetCollisionBounds( Vector(-2 -2, -2), Vector(2, 2, 2) )

    local phys = self.Entity:GetPhysicsObject()

    if IsValid(phys) then
        phys:Wake()
        phys:SetDamping( 0, 5 )
        local addVel = Vector(0, 0, 0)
        if IsValid(data:GetEntity():GetOwner()) then
            addVel = data:GetEntity().Owner:GetAbsVelocity()
        end
        phys:SetVelocity( (direction * math.random(300, 500)) + addVel )
        phys:AddAngleVelocity( VectorRand() * 800 )
        phys:SetMaterial( "gmod_silent" )
    end

    self.Entity:SetAngles( ang )

    self.HitPitch = self.Pitch + math.random(-5,5)

    self.SpawnTime = CurTime()
end

function EFFECT:GetBulletEjectPos(Position, Ent, Attachment)

    if !Ent:IsValid() then return Angle(), Position end
    if !Ent:IsWeapon() then return Angle(), Position end

    if Ent.EjectPosOverride then
        local hand = Ent.Owner:LookupBone("ValveBiped.Bip01_R_Hand")
        local pos, ang = Ent.Owner:GetBonePosition( hand )
        ejectpos = Vector(0, 0, 0)
        ejectpos = pos + (ang:Right() * Ent.EjectPosOverride.x)
        ejectpos = ejectpos + (ang:Forward() * Ent.EjectPosOverride.y)
        ejectpos = ejectpos + (ang:Up() * Ent.EjectPosOverride.z)

        ejectang = Angle(10, -90, -90)

        if Ent.EjectAngOverride then
            ang:Add(Ent.EjectAngOverride)
            ang.x = Ent.EjectAngOverride.x
        else
            ang:Add(ejectang)
            ang.x = ejectang.x
        end

        return ang, ejectpos
    end

    local att = Ent:GetAttachment(Attachment)
    if (att) then
        return att.Ang, att.Pos
    end
end

function EFFECT:PhysicsCollide()
    sound.Play(table.Random(self.Sounds), self.Entity:GetPos(), 65, self.HitPitch, 1)
end

function EFFECT:Think()
    return (self.SpawnTime + GetConVar("astw2_shelltime"):GetInt()) > CurTime()
end

function EFFECT:Render()
    self.Entity:DrawModel()
end