
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M60E4 CQB"
SWEP.Category = "ASTW2 - Machine Guns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Close combat version of the M60 GPMG. A shortened barrel reduces accuracy and increases recoil, while a smaller belt box reduces effective capacity. However, it increases the weapon's effective ROF."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 7.62mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_mach_m60cqb.mdl"

SWEP.Primary.Damage = 24
SWEP.Primary.Delay = 60 / 700
SWEP.Primary.Acc = 1 / 60
SWEP.Primary.Recoil = 225
SWEP.Primary.RecoilAcc = 65
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "7.62mm"
SWEP.Primary.ClipSize = 100

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m249/m249-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 85
SWEP.Sound_Magout = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Magin = "weapons/m249/m249_boxin.wav"
SWEP.Sound_Boltpull = "weapons/galil/galil_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_762mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 3.25
SWEP.CannotChamber = true

SWEP.Bipod = false

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2