
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "C228"
SWEP.Category = "ASTW2 - Carbines"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Self-loading semiautomatic carbine based off the SIG SAUER P228 handgun."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .45 Auto ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_rif_c228.mdl"

SWEP.Primary.Damage = 14
SWEP.Primary.Delay = 60 / 500
SWEP.Primary.Acc = 1 / 85
SWEP.Primary.Recoil = 100
SWEP.Primary.RecoilAcc = 50
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".45"
SWEP.Primary.ClipSize = 15

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/p228/p228-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 110
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mp5navy/mp5_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 1.5
SWEP.CannotChamber = false



SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "revolver"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2