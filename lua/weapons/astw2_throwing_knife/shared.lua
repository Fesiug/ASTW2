
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Throwing Knife"
SWEP.Category = "ASTW2 - Throwables"
SWEP.Slot = 4
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Lightened throwing knife. Cannot be used for normal attacks. Does not guarantee an instant kill."
SWEP.Instructions = "ATTACK2 to aim. Hold ATTACK1 to bring knife up, release to throw/place. Release ATTACK2 to cancel."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_knife_ct.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 1
SWEP.Primary.Acc = 0
SWEP.Primary.Recoil = 350
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_throwing_knife"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 1

SWEP.Projectile = "astw2_knife_thrown"
SWEP.ProjectileForce = 4000
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