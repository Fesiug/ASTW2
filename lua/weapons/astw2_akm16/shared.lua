
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "AKM16"
SWEP.Category = "ASTW2 - Assault Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "It is day 50 of my infiltration mission. Still, the ARs do not realize my true identity."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5.56mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_rif_akm16.mdl"

SWEP.Primary.Damage = 18
SWEP.Primary.Delay = 60 / 600
SWEP.Primary.Acc = 1 / 100
SWEP.Primary.Recoil = 205
SWEP.Primary.RecoilAcc = 65
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56mm"
SWEP.Primary.ClipSize = 34

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

SWEP.MuzzlePosOverride = Vector(2, 24, -7) // Overrides muzzle position. Vector.

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2