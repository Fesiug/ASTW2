
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "RPK"
SWEP.Category = "ASTW2 - Machine Guns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A light SAW based on the AKM platform."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 7.62mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_mach_rpk.mdl"

SWEP.Primary.Damage = 19
SWEP.Primary.Delay = 60 / 600
SWEP.Primary.Acc = 1 / 75
SWEP.Primary.Recoil = 185
SWEP.Primary.RecoilAcc = 25
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "7.62mm"
SWEP.Primary.ClipSize = 45

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/ak47/ak47-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 175
SWEP.Sound_Magout = "weapons/ak47/ak47_clipout.wav"
SWEP.Sound_Magin = "weapons/ak47/ak47_clipin.wav"
SWEP.Sound_Boltpull = "weapons/ak47/ak47_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_556mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.MuzzlePosOverride = Vector(0, 42, -11)

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2