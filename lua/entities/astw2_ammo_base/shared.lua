ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= "Base Ammo"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= false
ENT.AdminSpawnable		= false
ENT.Category			= "ASTW2 - Ammo"

AddCSLuaFile()

ENT.AmmoType 			= ""
ENT.AmmoAmount 			= 0
ENT.AmmoModel			= ""


function ENT:Initialize()

	if SERVER then
		self:SetModel(self.AmmoModel)
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
		self:SetTrigger( true )

		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
		end
	end
end

function ENT:StartTouch( entity )

	if ( entity:IsPlayer() ) then

		entity:GiveAmmo(self.AmmoAmount,self.AmmoType)
		self:EmitSound("items/ammopickup.wav")
		self:Remove()

	end

end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end
