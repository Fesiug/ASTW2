
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Kabar"
SWEP.Category = "ASTW2 - Melee"
SWEP.Slot = 0
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "An American marine combat knife, known for its durability and ergonomics."
SWEP.Instructions = "ATTACK2 to aim. ATTACK1 to stab."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_kabar.mdl"

SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 0.5
SWEP.Primary.Acc = 1 / 55
SWEP.Primary.Recoil = 0
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
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
SWEP.Melee_Swing = false // Whether to use grenade-style windup instead of reflex attack.
SWEP.Melee_Range = 12 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 0.25
SWEP.Melee_HitSound = "physics/metal/chain_impact_hard2.wav"
SWEP.Melee_HitHumanSound = "weapons/knife/knife_hit1.wav"
SWEP.Melee_DamageType = DMG_SLASH

SWEP.SpeedMult = 0.9
SWEP.IgnoreSpeedMult = true

SWEP.CanRest = false

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "knife"
SWEP.HoldType_Throw = ""
SWEP.Anim_Melee = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE