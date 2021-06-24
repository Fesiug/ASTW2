
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M2 Enforcer"
SWEP.Category = "ASTW2 - SMGs"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Cut-down version of the M2 carbine, itself a fully-automatic version of the M1 carbine. Used as an early police SMG."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .45 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_pist_enforcer.mdl"

SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 60 / 750
SWEP.Primary.Acc = 1 / 75
SWEP.Primary.Recoil = 110
SWEP.Primary.RecoilAcc = 50
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = ".45"
SWEP.Primary.ClipSize = 25

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/p228/p228-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 145
SWEP.Sound_Magout = "weapons/mp5navy/mp5_clipout.wav"
SWEP.Sound_Magin = "weapons/ump45/ump45_clipin.wav"
SWEP.Sound_Boltpull = "weapons/sg550/sg550_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_5mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.CanRest = false

SWEP.MuzzlePosOverride = Vector(2, 23, -6) // Overrides muzzle position. Vector.

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "revolver"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2