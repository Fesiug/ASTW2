
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Crossbow"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A scoped crossbow that fires heated rebar. A crude, homemade weapon, that nevertheless packs a serious punch."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses crossbow bolts."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_crossbow.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 240
SWEP.Primary.Acc = 0
SWEP.Primary.Recoil = 500
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "xbowbolt"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = "astw2_crossbow_bolt"
SWEP.ProjectileForce = 15000
SWEP.ProjectileAngle = Angle(0, 0, 0)

SWEP.Sound = "weapons/crossbow/fire1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 125
SWEP.Sound_Magout = "weapons/crossbow/reload1.wav"
SWEP.Sound_Magin = "weapons/crossbow/bolt_load2.wav"
SWEP.Sound_Boltpull = ""

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.Effect_MuzzleFlash = ""

SWEP.Magnification = 4

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/simple.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.HoldType_Hipfire = "crossbow"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG