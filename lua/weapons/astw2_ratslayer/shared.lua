
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Varmint Ratslayer"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A customized Varmint Rifle, with 30-round magazine, magnifying scope, and suppressor."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5.56mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_ratslayer.mdl"

SWEP.Primary.Damage = 18
SWEP.Primary.Delay = 60 / 100
SWEP.Primary.Acc = 1 / 225
SWEP.Primary.Recoil = 175
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "5.56mm"
SWEP.Primary.ClipSize = 30

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m4a1/m4a1-1.wav"
SWEP.Sound_Vol = 75
SWEP.Sound_Pitch = 150
SWEP.Sound_Magout = "weapons/g3sg1/g3sg1_clipout.wav"
SWEP.Sound_Magin = "weapons/famas/famas_clipin.wav"
SWEP.Sound_Boltpull = "weapons/k98_singleshotreload.wav"
SWEP.Sound_BoltActionDelay = 0.1
SWEP.Sound_BoltAction = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltActionPitch = 125
SWEP.Suppressed = true
SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_556mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.Magnification = 2.5

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/simple.png")
SWEP.NightScope = true

SWEP.MuzzlePosOverride = Vector(2, 36, -10) // Overrides muzzle position. Vector.
SWEP.EjectPosOverride = Vector(2, 8, -4) // Overrides eject position. Vector.
SWEP.EjectAngOverride = Angle(-10, -90, -90) // Overrides eject angle. Angle.

SWEP.UniqueFiremode = "BOLT"

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG