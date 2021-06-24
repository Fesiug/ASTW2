
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M202 FLASH"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "American quadruple-barrelled incendiary rocket launcher. Launches rockets with a ballistic arc which explode into a shower of napalm on impact. Burn, baby, burn!"
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses Incendiary Grenades."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_m202flash.mdl"

SWEP.Primary.Damage = 450
SWEP.Primary.Delay = 60 / 120
SWEP.Primary.Acc = 1 / 400
SWEP.Primary.Recoil = 100
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "astw2_grenade_incendiary"
SWEP.Primary.ClipSize = 4

SWEP.Projectile = "astw2_flash_rocket_launched"
SWEP.ProjectileForce = 5000
SWEP.ProjectileAngle = Angle(0, 0, 0)

SWEP.Sound = "weapons/rpg/rocketfire1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.UniqueFiremode = "SACT"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true



SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "rpg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG