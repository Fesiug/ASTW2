
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Thompson"
SWEP.Category = "ASTW2 - SMGs"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "The original American SMG. Chambered in .45 Auto, this gun is iconic world round in the hands of '20s gangsters and '40s GIs alike."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .45 Auto ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_thompson.mdl"

SWEP.Primary.Damage = 16
SWEP.Primary.Delay = 60 / 800
SWEP.Primary.Acc = 1 / 100
SWEP.Primary.Recoil = 175
SWEP.Primary.RecoilAcc = 35
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = ".45"
SWEP.Primary.ClipSize = 30

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/ump45/ump45-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 135
SWEP.Sound_Magout = "weapons/ump45/ump45_clipout.wav"
SWEP.Sound_Magin = "weapons/tmp/tmp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mac10/mac10_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true



SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2