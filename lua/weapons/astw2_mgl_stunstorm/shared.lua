
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M32 MGL Stunstorm"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "My eyes! Holy crap, why did you make this?"
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses stun grenades."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_mgl.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 120
SWEP.Primary.Acc = 1 / 400
SWEP.Primary.Recoil = 500
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "astw2_grenade_flash"
SWEP.Primary.ClipSize = 6

SWEP.Projectile = "astw2_riflestun_launched"
SWEP.ProjectileForce = 10000
SWEP.ProjectileAngle = Angle(90, 0, 0)

SWEP.Sound = "weapons/grenade_launcher1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 125
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.UniqueFiremode = "DACT"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.5
SWEP.CannotChamber = true

SWEP.Magnification = 1.17

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/acog.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG