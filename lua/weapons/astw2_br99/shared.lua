
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "BR99"
SWEP.Category = "ASTW2 - Shotguns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Automatic magazine-fed shotgun using the AR-15 pattern."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12 gauge ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_shot_br99.mdl"

SWEP.Primary.Damage = 10
SWEP.Primary.Delay = 60 / 300
SWEP.Primary.Acc = 1 / 12.5
SWEP.Primary.Recoil = 600
SWEP.Primary.RecoilAcc = 0
SWEP.Primary.Num = 8
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12g"
SWEP.Primary.ClipSize = 15

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/xm1014/xm1014-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 140
SWEP.Sound_Magout = "weapons/m4a1/m4a1_clipout.wav"
SWEP.Sound_Magin = "weapons/g3sg1/g3sg1_clipin.wav"
SWEP.Sound_Boltpull = "weapons/m4a1/m4a1_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_12g"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.0
SWEP.CannotChamber = false



SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG