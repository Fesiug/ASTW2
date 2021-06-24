
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Colt LMG"
SWEP.Category = "ASTW2 - Machine Guns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "M16-style machine gun using 60-round casket magazines."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5.56mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_mach_colt.mdl"

SWEP.Primary.Damage = 18
SWEP.Primary.Delay = 60 / 700
SWEP.Primary.Acc = 1 / 150
SWEP.Primary.Recoil = 100
SWEP.Primary.RecoilAcc = 20
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56mm"
SWEP.Primary.ClipSize = 60

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m4a1/m4a1_unsil-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 85
SWEP.Sound_Magout = "weapons/m4a1/m4a1_clipout.wav"
SWEP.Sound_Magin = "weapons/g3sg1/g3sg1_clipin.wav"
SWEP.Sound_Boltpull = "weapons/m4a1/m4a1_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_556mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false
SWEP.Bipod = true

SWEP.MuzzlePosOverride = Vector(0, 38, -9) // Overrides muzzle position. Vector.

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2