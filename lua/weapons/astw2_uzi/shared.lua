
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Uzi"
SWEP.Category = "ASTW2 - SMGs"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "The Uzi was invented by Uziel Gal as a response to a need for a smaller SMG. Based on the MP40, the Uzi reduces its size by moving the magazine into the grip. Contrary to common conception, the Uzi is considered the most controllable SMG in existence, topping even the MP40. As one of the only cheaply available SMGs for a long time, it saw widespread adoption by militaries around the world. It's a staple of late-20th-Centry action cinema."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 9mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_smg_uzi.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 60 / 650
SWEP.Primary.Acc = 1 / 65
SWEP.Primary.Recoil = 95
SWEP.Primary.RecoilAcc = 15
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "9mm"
SWEP.Primary.ClipSize = 32

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/ump45/ump45-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 145
SWEP.Sound_Magout = "weapons/tmp/tmp_clipout.wav"
SWEP.Sound_Magin = "weapons/tmp/tmp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mac10/mac10_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.MuzzlePosOverride = Vector(0, 22, -6)

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2