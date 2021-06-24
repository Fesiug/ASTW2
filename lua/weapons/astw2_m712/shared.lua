
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M712 Schnellfeuer"
SWEP.Category = "ASTW2 - SMGs"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Fully-automatic stocked SMG version of the C96 handgun. Also known as the Schnellfeuer, or 'Quick Fire'."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 9mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_c96.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 60 / 1000
SWEP.Primary.Acc = 1 / 70
SWEP.Primary.Recoil = 90
SWEP.Primary.RecoilAcc = 50
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "9mm"
SWEP.Primary.ClipSize = 20

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/fiveseven/fiveseven-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 115
SWEP.Sound_Magout = "weapons/tmp/tmp_clipout.wav"
SWEP.Sound_Magin = "weapons/tmp/tmp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mac10/mac10_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.MuzzlePosOverride = Vector(0, 16, -5) // Overrides muzzle position. Vector.

SWEP.CanRest = false

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "revolver"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1