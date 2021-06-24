
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Brown Bess"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Smoothbore muzzle-loading black powder musket. Technically not a firearm by US law. This gun was the Colonial-era right arm of the free world, used by United States forces to fight off the British."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12 Gauge ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_rif_brownbess.mdl"

SWEP.Primary.Damage = 100
SWEP.Primary.Delay = 60 / 45
SWEP.Primary.Acc = 1 / 20
SWEP.Primary.Recoil = 500
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12g"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "ambient/explosions/explode_9.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 200
SWEP.Sound_Magout = "weapons/ar2/ar2_reload.wav"
SWEP.Sound_Magin = ""
SWEP.Sound_Boltpull = "weapons/shotgun/shotgun_reload3.wav"

SWEP.UniqueFiremode = "MZZL"

SWEP.Secondary.Ammo = nil

SWEP.Effect_MuzzleFlash = "astw2_muzzleflash_cannon"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.Magnification = 1.0

SWEP.TrueScope = false // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/specter.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW