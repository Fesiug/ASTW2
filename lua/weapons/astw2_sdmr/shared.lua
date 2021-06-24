
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "XM100 IMR-SD"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "5.56mm silenced DMR. A cutting edge experimental weapon that uses the same kind of sound damping effect the MP5SD suppressor uses, but employed on a 5.56mm round."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5.56mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_sdmr.mdl"

SWEP.Primary.Damage = 24
SWEP.Primary.Delay = 60 / 240
SWEP.Primary.Acc = 1 / 500
SWEP.Primary.Recoil = 200
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "5.56mm"
SWEP.Primary.ClipSize = 20

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m4a1/m4a1-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 85
SWEP.Sound_Magout = "weapons/g3sg1/g3sg1_clipout.wav"
SWEP.Sound_Magin = "weapons/g3sg1/g3sg1_clipin.wav"
SWEP.Sound_Boltpull = "weapons/m4a1/m4a1_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_556mm"

SWEP.ReloadTime = 2
SWEP.CannotChamber = false
SWEP.Suppressed = true

SWEP.Magnification = 2.5

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/simple_glow.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG