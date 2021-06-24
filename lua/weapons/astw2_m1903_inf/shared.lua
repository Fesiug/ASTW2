
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M1903 Infantry"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Bolt-action World War One-era rifle."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .308 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_rif_1903.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 80
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
SWEP.Sound_Pitch = 105
SWEP.Sound_Magout = "weapons/k98_clipin2.wav"
SWEP.Sound_Magin = "weapons/k98_clipin.wav"
SWEP.Sound_Boltpull = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltAction = "weapons/scout/scout_bolt.wav"

SWEP.UniqueFiremode = "BOLT"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_762mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.Magnification = 1.0

SWEP.TrueScope = false // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/simple.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG