
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M4 Super 90"
SWEP.Category = "ASTW2 - Shotguns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Fully automatic Italian tube-fed shotgun, fitted with a scope for target shooting. Competition grade."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12 Gauge ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_shot_m4s90.mdl"

SWEP.Primary.Damage = 10
SWEP.Primary.Delay = 60 / 200
SWEP.Primary.Acc = 1 / 25
SWEP.Primary.Recoil = 600
SWEP.Primary.RecoilAcc = 0
SWEP.Primary.Num = 8
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12g"
SWEP.Primary.ClipSize = 4

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/xm1014/xm1014-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 115

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_12g"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.5
SWEP.CannotChamber = true

SWEP.Magnification = 1.37

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/acog.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG