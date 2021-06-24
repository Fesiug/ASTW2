
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "K98 Scoped"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Accurized, scoped version of the Kar98k rifle."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .308 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_k98s.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 60
SWEP.Primary.Acc = 1 / 400
SWEP.Primary.Recoil = 250
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".308"
SWEP.Primary.ClipSize = 5

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/scout/scout_fire-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/k98_clipin2.wav"
SWEP.Sound_Magin = "weapons/k98_clipin.wav"
SWEP.Sound_Boltpull = "weapons/k98_singleshotreload.wav"
SWEP.Sound_BoltActionDelay = 0.2
SWEP.Sound_BoltAction = "weapons/scout/scout_bolt.wav"

SWEP.UniqueFiremode = "BOLT"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_762mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.Magnification = 2.5

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/simple.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG