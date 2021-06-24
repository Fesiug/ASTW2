
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "UMP-45"
SWEP.Category = "ASTW2 - SMGs"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "The UMP-45 is the .45 Auto successor to the MP5. With a slower cyclic rate, it is more controllable, but many police departments still prefer the MP5, as the UMP is considered poorly made and relatively unreliable."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .45 Auto ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_smg_ump45.mdl"

SWEP.Primary.Damage = 16
SWEP.Primary.Delay = 60 / 600
SWEP.Primary.Acc = 1 / 95
SWEP.Primary.Recoil = 150
SWEP.Primary.RecoilAcc = 35
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = ".45"
SWEP.Primary.ClipSize = 25

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/ump45/ump45-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/ump45/ump45_clipout.wav"
SWEP.Sound_Magin = "weapons/ump45/ump45_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mp5navy/mp5_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.CanRest = false

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2