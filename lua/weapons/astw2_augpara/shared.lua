
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "AUG Para"
SWEP.Category = "ASTW2 - SMGs"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Austrian AUG-pattern submachine gun."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 9mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_smg_para.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 60 / 750
SWEP.Primary.Acc = 1 / 125
SWEP.Primary.Recoil = 90
SWEP.Primary.RecoilAcc = 75
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "9mm"
SWEP.Primary.ClipSize = 32

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/aug/aug-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 140
SWEP.Sound_Magout = "weapons/aug/aug_clipout.wav"
SWEP.Sound_Magin = "weapons/aug/aug_clipin.wav"
SWEP.Sound_Boltpull = "weapons/aug/aug_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.Magnification = 1.37

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/dot.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2