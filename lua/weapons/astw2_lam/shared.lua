
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "LAM"
SWEP.Category = "ASTW2 - Throwables"
SWEP.Slot = 4
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Light attack mine. After deployment, it will arm. If an enemy trips its laser sensor, it will detonate."
SWEP.Instructions = "ATTACK2 to aim. Hold ATTACK1 to bring explosive up, release to throw/place. Release ATTACK2 to cancel."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_slam.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 1
SWEP.Primary.Acc = 1 / 55
SWEP.Primary.Recoil = 350
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_lam"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 1

SWEP.Projectile = "astw2_lam_placed"
SWEP.ProjectileForce = 500
SWEP.ProjectileIsGrenade = true

SWEP.Sound = "weapons/slam/throw.wav"
SWEP.Sound_Vol = 75
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/usp/usp_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 0
SWEP.CannotChamber = true

SWEP.CanRest = false

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "pistol"
SWEP.HoldType_Throw = "camera"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SLAM