
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Spud Gun"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A classic fun 'toy' created with some standard piping. By filling the firing chamber with flammable aerosol and igniting it, a blast wave is created that can propel the potato projectile out of the gun's barrel. Sadly, such activities are usually banned in most places around the world, so you'll have to make do with a virtual one. A sad state of affairs indeed."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses spuds."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_spudgun.mdl"

SWEP.Primary.Damage = 300
SWEP.Primary.Delay = 60 / 100
SWEP.Primary.Acc = 1 / 300
SWEP.Primary.Recoil = 300
SWEP.Primary.RecoilAcc = 50
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "astw2_spud"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Projectile = "astw2_spud_launched"
SWEP.ProjectileForce = 1000

SWEP.Sound = "weapons/mortar/mortar_fire1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 150
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.UniqueFiremode = "MZZL"

SWEP.Secondary.Ammo = nil

SWEP.Effect_MuzzleFlash = "astw2_muzzleflash_cannon"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.Bipod = true

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "rpg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW