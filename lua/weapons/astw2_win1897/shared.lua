
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Winchester 1897"
SWEP.Category = "ASTW2 - Shotguns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Iconic US 'Trench Gun' shotgun. This weapon is slamfire, allowing it to fire continuously if the trigger is held and the slide is repeatedly cycled."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12 Gauge ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_shot_trenchgun.mdl"

SWEP.Primary.Damage = 10
SWEP.Primary.Delay = 60 / 120
SWEP.Primary.Acc = 1 / 17.5
SWEP.Primary.Recoil = 600
SWEP.Primary.RecoilAcc = 0
SWEP.Primary.Num = 8
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "12g"
SWEP.Primary.ClipSize = 5

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m3/m3-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 150

SWEP.UniqueFiremode = "PUMP"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_12g"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.5
SWEP.CannotChamber = true



SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN