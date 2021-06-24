
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "10/22"
SWEP.Category = "ASTW2 - Carbines"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Self-loading .22LR carbine. Popular plinking gun. Very low damage."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .22 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_rif_1022.mdl"

SWEP.Primary.Damage = 6
SWEP.Primary.Delay = 60 / 750
SWEP.Primary.Acc = 1 / 85
SWEP.Primary.Recoil = 50
SWEP.Primary.RecoilAcc = 5
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".22"
SWEP.Primary.ClipSize = 10

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/fiveseven/fiveseven-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 155
SWEP.Sound_Magout = "weapons/mac10/mac10_clipout.wav"
SWEP.Sound_Magin = "weapons/ump45/ump45_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mac10/mac10_boltpull.wav"

SWEP.Effect_ShellEject = "astw2_case_22lr"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.MuzzlePosOverride = Vector(2, 32, -8) // Overrides muzzle position. Vector.
SWEP.EjectPosOverride = Vector(2, 8, -4) // Overrides eject position. Vector.
SWEP.EjectAngOverride = Angle(-30, -90, -90) // Overrides eject angle. Angle.

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2