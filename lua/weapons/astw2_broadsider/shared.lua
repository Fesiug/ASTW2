
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Broadsider"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Ever asked the age-old question, 'Would it be fun to walk around and shoot people with a portable naval cannon?', ? Well, neither have we, but we were told you might be interested. Centuries-old black powder cannon. Fires high explosive cannonballs with the explosive power of a block of C4."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses rockets."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_cannon.mdl"

SWEP.Primary.Damage = 300
SWEP.Primary.Delay = 60 / 100
SWEP.Primary.Acc = 1 / 100
SWEP.Primary.Recoil = 200
SWEP.Primary.RecoilAcc = 50
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "astw2_rocket"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Projectile = "astw2_broadsider_round"
SWEP.ProjectileForce = 10000

SWEP.Sound = "weapons/mortar/mortar_fire1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 80
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_MuzzleFlash = "astw2_muzzleflash_cannon"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.Bipod = true

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "physgun"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW