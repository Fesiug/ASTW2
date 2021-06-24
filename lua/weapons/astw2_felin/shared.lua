
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Felin"
SWEP.Category = "ASTW2 - Carbines"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Carbine variant of the FAMAS assault rifle, with higher-capacity 30 round magazine and RIS carryhandle to facilitate the addition of a sight. The CCO x1.25 optic attached provides for slightly improved aim over distances."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5.56mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_rif_felin.mdl"

SWEP.Primary.Damage = 18
SWEP.Primary.Delay = 60 / 900
SWEP.Primary.Acc = 1 / 125
SWEP.Primary.Recoil = 110
SWEP.Primary.RecoilAcc = 70
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56mm"
SWEP.Primary.ClipSize = 30

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/famas/famas-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 125
SWEP.Sound_Magout = "weapons/famas/famas_clipout.wav"
SWEP.Sound_Magin = "weapons/famas/famas_clipin.wav"
SWEP.Sound_Boltpull = "weapons/famas/famas_forearm.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_556mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.Magnification = 1.25

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/acog.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2