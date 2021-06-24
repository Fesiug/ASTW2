
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "VSS Vintorez"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Integrally silenced Russian special forces rifle. Famed around the world for its unique handling characteristics. The VSS is the sniper version of the AS VAL, and includes a scope."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 7.62mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_vss.mdl"

SWEP.Primary.Damage = 19
SWEP.Primary.Delay = 60 / 600
SWEP.Primary.Acc = 1 / 300
SWEP.Primary.Recoil = 175
SWEP.Primary.RecoilAcc = 65
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "7.62mm"
SWEP.Primary.ClipSize = 20

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m4a1/m4a1-1.wav"
SWEP.Sound_Vol = 75
SWEP.Sound_Pitch = 150
SWEP.Sound_Magout = "weapons/ak47/ak47_clipout.wav"
SWEP.Sound_Magin = "weapons/ak47/ak47_clipin.wav"
SWEP.Sound_Boltpull = "weapons/ak47/ak47_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_5mm"

SWEP.MagDrop = ""

SWEP.Magnification = 3
SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/specter.png")
SWEP.TrueScopeStab = 256

SWEP.ReloadTime = 2
SWEP.CannotChamber = false
SWEP.Suppressed = true

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2