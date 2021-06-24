
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "GroBzAK-69"
SWEP.Category = "ASTW2 - Assault Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Improvised modified bullpup AKM rifle. The compact package and attached foregrip reduces its recoil."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 7.62mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_rif_bakm.mdl"

SWEP.Primary.Damage = 19
SWEP.Primary.Delay = 60 / 600
SWEP.Primary.Acc = 1 / 120
SWEP.Primary.Recoil = 150
SWEP.Primary.RecoilAcc = 25
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "7.62mm"
SWEP.Primary.ClipSize = 30

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/galil/galil-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 120
SWEP.Sound_Magout = "weapons/ak47/ak47_clipout.wav"
SWEP.Sound_Magin = "weapons/ak47/ak47_clipin.wav"
SWEP.Sound_Boltpull = "weapons/ak47/ak47_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_556mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.MuzzlePosOverride = Vector(2, 24, -8) // Overrides muzzle position. Vector.
SWEP.EjectPosOverride = Vector(2, -2, -3) // Overrides eject position. Vector.
SWEP.EjectAngOverride = Angle(0, -90, -90) // Overrides eject angle. Angle.

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2