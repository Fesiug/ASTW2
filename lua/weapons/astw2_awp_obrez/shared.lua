
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "AWP Obrez"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "While AWP rifles are extremely expensive pieces, ordered at great cost for specific purposes and kept closely guarded in government armories, this one has found its way into hands that have shortened the barrel, cut down the stock, and removed the scope to transform it into a close-range bolt-action fighting handgun."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12.7mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_awp_obrez.mdl"

SWEP.Primary.Damage = 95
SWEP.Primary.Delay = 60 / 45
SWEP.Primary.Acc = 1 / 25
SWEP.Primary.Recoil = 600
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12.7mm"
SWEP.Primary.ClipSize = 8

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/awp/awp1.wav"
SWEP.Sound_Vol = 150
SWEP.Sound_Pitch = 85
SWEP.Sound_Magout = "weapons/awp/awp_clipout.wav"
SWEP.Sound_Magin = "weapons/awp/awp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltActionDelay = 0.5
SWEP.Sound_BoltAction = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltActionPitch = 85

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_127mm"

SWEP.UniqueFiremode = "BOLT"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.MuzzlePosOverride = Vector(2, 32, -8)

SWEP.Special = "melee"
SWEP.Melee = false // Whether to use the melee attack of the gun.
SWEP.Melee_Damage = 10
SWEP.Melee_Range = 8 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 1
SWEP.Melee_HitSound = "physics/metal/weapon_impact_hard1.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "revolver"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.Anim_Melee = ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND