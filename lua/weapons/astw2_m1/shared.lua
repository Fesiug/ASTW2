
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M1 Carbine"
SWEP.Category = "ASTW2 - Carbines"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Self-loading carbine, used in the Second World War through to the Vietnam War by the US military."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .45 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_m1carb.mdl"

SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 60 / 750
SWEP.Primary.Acc = 1 / 125
SWEP.Primary.Recoil = 110
SWEP.Primary.RecoilAcc = 50
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".45"
SWEP.Primary.ClipSize = 15

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/p228/p228-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 125
SWEP.Sound_Magout = "weapons/mp5navy/mp5_clipout.wav"
SWEP.Sound_Magin = "weapons/ump45/ump45_clipin.wav"
SWEP.Sound_Boltpull = "weapons/sg550/sg550_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_5mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false



SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2