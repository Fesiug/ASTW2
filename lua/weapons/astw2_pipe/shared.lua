
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Lead Pipe"
SWEP.Category = "ASTW2 - Melee"
SWEP.Slot = 0
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A classic weapon torn from the walls of the City 17 sewers. Excellent against Manhacks. This weapon is dedicated to Matt, 19XX-20XX. Your manhack-destroying abilities will be remembered by us all."
SWEP.Instructions = "ATTACK2 to aim. ATTACK1 to raise weapon, release to swing. Release ATTACK2 to cancel swing."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/props_canal/mattpipe.mdl"

SWEP.Primary.Damage = 20
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = ""
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 0

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
SWEP.Melee_Range = 30 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 0.5
SWEP.Melee_HitSound = "physics/metal/metal_canister_impact_hard2.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB

SWEP.SpeedMult = 0.75
SWEP.IgnoreSpeedMult = true

SWEP.CanRest = false

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "pistol"
SWEP.HoldType_Throw = "melee"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2