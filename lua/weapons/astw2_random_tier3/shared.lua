SWEP.Author						= "xyzzy"
SWEP.Category					= ""
SWEP.Spawnable 					= false
SWEP.AdminSpawnable				= false
SWEP.PrintName					= "Tier 3 Weapons"
SWEP.WeaponList					= astw2_weapons_tier3

function SWEP:Initialize()

	if not SERVER then return end

	self:Remove()

end

function SWEP:OnRemove()

	if not SERVER then return end

	if IsValid(self) and IsValid(self.Owner) and self.Owner:IsNPC() then

		self.Owner:Give(table.Random(self.WeaponList))

	end

end

function SWEP:Deploy()

	return true

end