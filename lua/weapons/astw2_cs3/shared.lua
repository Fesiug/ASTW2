
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "CS-390"
SWEP.Category = "ASTW2 - Shotguns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Modified version of the M3 shotgun, with a cut-down stock and shortened barrel for confined-space ('CS') operations. It has been modified to be slam-fire, allowing the operator to continuously fire while racking the slide as long as the trigger is held, and accepts a magazine to improve reload time and ammo capacity."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12 Gauge ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_shot_cs3.mdl"

SWEP.Primary.Damage = 10
SWEP.Primary.Delay = 60 / 100
SWEP.Primary.Acc = 1 / 15
SWEP.Primary.Recoil = 600
SWEP.Primary.RecoilAcc = 0
SWEP.Primary.Num = 8
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "12g"
SWEP.Primary.ClipSize = 10

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m3/m3-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 125
SWEP.Sound_Magout = "weapons/m4a1/m4a1_clipout.wav"
SWEP.Sound_Magin = "weapons/g3sg1/g3sg1_clipin.wav"
SWEP.Sound_Boltpull = "weapons/m3/m3_pump.wav"

SWEP.UniqueFiremode = "PUMP"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_12g"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.0
SWEP.CannotChamber = false



SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN