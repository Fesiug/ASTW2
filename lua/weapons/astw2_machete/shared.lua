
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Machete"
SWEP.Category = "ASTW2 - Melee"
SWEP.Slot = 0
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Long broad-bladed sword knife. For cutting foliage, wood, and the necks of your enemies should they cross you."
SWEP.Instructions = "ATTACK2 to aim. ATTACK1 to swing weapon."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_machete.mdl"

SWEP.Primary.Damage = 75
SWEP.Primary.Delay = 0.25
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
SWEP.Sound_Pitch = 125
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
SWEP.Melee_Range = 48 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 0.5
SWEP.Melee_HitSound = "physics/metal/metal_solid_impact_hard4.wav"
SWEP.Melee_HitHumanSound = "weapons/knife/knife_hit2.wav"
SWEP.Melee_DamageType = DMG_SLASH

SWEP.SpeedMult = 0.9
SWEP.IgnoreSpeedMult = true

SWEP.CanRest = false

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "pistol"
SWEP.HoldType_Throw = "melee"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2