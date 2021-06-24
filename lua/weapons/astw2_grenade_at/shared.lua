
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "AT Grenade"
SWEP.Category = "ASTW2 - Throwables"
SWEP.Slot = 4
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Seven bunched stick grenades, set to explode simultaneously. The effect increases explosive effect and radius. To throw it, you will need seven stick grenades."
SWEP.Instructions = "ATTACK2 to aim. Hold ATTACK1 to bring explosive up, release to throw/place. Release ATTACK2 to cancel."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_atgrenade.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 1
SWEP.Primary.Acc = 0
SWEP.Primary.Recoil = 350
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_grenade_frag"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 7
SWEP.BulletsPerShot = 7

SWEP.Projectile = "astw2_grenade_at_thrown"
SWEP.ProjectileForce = 5000
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
SWEP.HoldType_Throw = "grenade"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE