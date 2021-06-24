SWEP.Author						= "xyzzy"
SWEP.Category					= ""
SWEP.Spawnable 					= false
SWEP.AdminSpawnable				= false
SWEP.PrintName					= "Totally Random Weapons"

function SWEP:Initialize()

	if !SERVER then return end

	self:Remove()

end

function SWEP:OnRemove()

	if !SERVER then return end

	if IsValid(self) and IsValid(self.Owner) and self.Owner:IsNPC() then

		local weaponlist = weapons.GetList()

		local weapontogive = table.Random(weaponlist)

		if weapons.IsBasedOn(weapontogive.ClassName, "astw2_base") and !weapontogive.Melee and !weapontogive.NPCUnusable and weapontogive.Spawnable and !weapontogive.AdminOnly then

			self.Owner:Give(weapontogive.ClassName)

		else

			self.Owner:Give( "astw2_random_all" )

		end

	end

end

function SWEP:Deploy()

	return true

end