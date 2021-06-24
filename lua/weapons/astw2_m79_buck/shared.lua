
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M79 Buckshot"
SWEP.Category = "ASTW2 - Shotguns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Version of the M79 grenade launcher equipped with 40mm buckshot shells, allowing for massive damage compared to any other shotgun. Don't shoot if he's not black."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses rifle grenades."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_shot_m79.mdl"

SWEP.Primary.Damage = 10
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 10
SWEP.Primary.Recoil = 1200
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 15
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_rg"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = nil
SWEP.ProjectileForce = 10000
SWEP.ProjectileAngle = Angle(90, 0, 0)

SWEP.Sound = "weapons/xm1014/xm1014-1.wav"
SWEP.Sound_Vol = 110
SWEP.Sound_Pitch = 65
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.UniqueFiremode = "BRKE"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.5
SWEP.CannotChamber = true

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG