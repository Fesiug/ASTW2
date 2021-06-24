
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "MP5"
SWEP.Category = "ASTW2 - SMGs"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Roller-delayed German 9mm SMG. Popular worldwide as a police gun."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 9mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 60 / 700
SWEP.Primary.Acc = 1 / 100
SWEP.Primary.Recoil = 115
SWEP.Primary.RecoilAcc = 45
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "9mm"
SWEP.Primary.ClipSize = 30

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/mp5navy/mp5-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/mp5navy/mp5_clipout.wav"
SWEP.Sound_Magin = "weapons/tmp/tmp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mp5navy/mp5_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1