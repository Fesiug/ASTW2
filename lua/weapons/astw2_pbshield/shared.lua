
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "PB Shield"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 0
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A purpose-made personal ballistic shield made of composite metal alloy with a reinforced polycarbonate visor for excellent protection against bullets. Offers good protection from the front, and can be used to protect teammates behind the operator as well. As it is designed specifically for shielding purposes, it offers more comprehensive protection than the Steel Shield as well as a larger viewport."
SWEP.Instructions = "ATTACK2 to raise shield. ATTACK1 to shield bash."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_pbshield.mdl"

SWEP.Primary.Damage = 10
SWEP.Primary.Delay = 0.4
SWEP.Primary.Acc = 1 / 55
SWEP.Primary.Recoil = 350
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
SWEP.Sound_Pitch = 90
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/usp/usp_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 0
SWEP.CannotChamber = true
SWEP.HasDetonator = false

SWEP.Special = "melee"
SWEP.Melee = true // Whether to use the melee attack of the gun.
SWEP.Melee_Swing = false // Whether to use grenade-style windup instead of reflex attack.
SWEP.Melee_Range = 16 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 1
SWEP.Melee_HitSound = "physics/metal/metal_sheet_impact_hard2.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB

SWEP.WeaponIsShield = true

SWEP.SpeedMult = 0.75
SWEP.IgnoreSpeedMult = true

SWEP.ShieldPosOverride = Vector( 0, 13.5, 2.5 )
SWEP.ShieldAngOverride = Angle( 170, 180, 0 )

SWEP.CanRest = false
SWEP.NeverHipfire = true

SWEP.HoldType_Lowered = "slam"
SWEP.HoldType_Aim = "melee2"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE