
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "AWS"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Integrally suppressed and shortened version of the AWP sniper rifle."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12.7mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_aws.mdl"

SWEP.Primary.Damage = 80
SWEP.Primary.Delay = 60 / 45
SWEP.Primary.Acc = 1 / 750
SWEP.Primary.Recoil = 400
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12.7mm"
SWEP.Primary.ClipSize = 8

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m4a1/m4a1-1.wav"
SWEP.Sound_Vol = 75
SWEP.Sound_Pitch = 50
SWEP.Sound_Magout = "weapons/awp/awp_clipout.wav"
SWEP.Sound_Magin = "weapons/awp/awp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltActionDelay = 0.5
SWEP.Sound_BoltAction = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltActionPitch = 85

SWEP.UniqueFiremode = "BOLT"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_127mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false
SWEP.Suppressed = true

SWEP.Magnification = 4.0

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/specter.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "rpg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW