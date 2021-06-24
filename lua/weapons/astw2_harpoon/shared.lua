
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Harpoon"
SWEP.Category = "ASTW2 - Melee"
SWEP.Slot = 0
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A long harpoon with a pointed tip. An effective melee weapon with long reach. Even allows you to swing through fences."
SWEP.Instructions = "ATTACK2 to aim. ATTACK1 to raise weapon, release to swing. Release ATTACK2 to cancel swing."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_harpoon.mdl"

SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 0.5
SWEP.Primary.Acc = 1 / 55
SWEP.Primary.Recoil = 0
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = ""
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 1

SWEP.Projectile = nil
SWEP.ProjectileForce = 250
SWEP.ProjectileIsGrenade = false

SWEP.Sound = "weapons/knife/knife_slash1.wav"
SWEP.Sound_Vol = 75
SWEP.Sound_Pitch = 80
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/usp/usp_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 0
SWEP.CannotChamber = true
SWEP.HasDetonator = false

SWEP.Melee = true // Whether to use the melee attack of the gun.
SWEP.Melee_Swing = true // Whether to use grenade-style windup instead of reflex attack.
SWEP.Melee_Range = 0 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 0.25
SWEP.Melee_HitSound = "physics/metal/sawblade_stick3.wav"
SWEP.Melee_HitHumanSound = "weapons/knife/knife_hit2.wav"
SWEP.Melee_DamageType = DMG_SLASH
SWEP.Melee_Range_Forward = 128

SWEP.CanRest = false

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "physgun"
SWEP.HoldType_Throw = "shotgun"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SLAM