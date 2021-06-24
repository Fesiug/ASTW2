
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "CQ-249 STANAG"
SWEP.Category = "ASTW2 - Machine Guns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "The 'close quarters' variant of the M249 LMG. Uses the STANAG port to accept normal magazines instead of a belt. The barrel and handguard have been shortened and the stock has been replaced with a lightweight folding variant."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5.56mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_mach_cq249.mdl"

SWEP.Primary.Damage = 18
SWEP.Primary.Delay = 60 / 850
SWEP.Primary.Acc = 1 / 75
SWEP.Primary.Recoil = 85
SWEP.Primary.RecoilAcc = 35
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56mm"
SWEP.Primary.ClipSize = 40

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m249/m249-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 115
SWEP.Sound_Magout = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Magin = "weapons/m249/m249_boxin.wav"
SWEP.Sound_Boltpull = "weapons/galil/galil_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_556mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false



SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2