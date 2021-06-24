
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "PS90"
SWEP.Category = "ASTW2 - Carbines"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A semi-automatic, lengthened and NFA-compliant civilian version of the P90 SMG."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_smg_ps90.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 60 / 900
SWEP.Primary.Acc = 1 / 100
SWEP.Primary.Recoil = 125
SWEP.Primary.RecoilAcc = 25
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "5mm"
SWEP.Primary.ClipSize = 50

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/fiveseven/fiveseven-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 185

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_5mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.75
SWEP.CannotChamber = false

SWEP.CanRest = false

SWEP.MuzzlePosOverride = Vector(2, 32, -9) // Overrides muzzle position. Vector.

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1