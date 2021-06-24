
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Chainsaw"
SWEP.Category = "ASTW2 - Melee"
SWEP.Slot = 0
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A wood-cutting chainsaw. Attempting to use this on flesh would be a terrible idea, as the chain would detach and the engine would jam, and the blood will clog the internal mechanisms. But you know those aren't simulated in this."
SWEP.Instructions = "ATTACK2 to aim. ATTACK1 to attack."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_chainsaw.mdl"

SWEP.Primary.Damage = 10
SWEP.Primary.Delay = 0.05
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

SWEP.Sound = ""
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
SWEP.Melee_Range = 0 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 0.1
SWEP.Melee_Sound = "weapons/chainsaw_rev2.wav"
SWEP.Melee_HitSound = "npc/manhack/grind4.wav"
SWEP.Melee_HitHumanSound = "npc/manhack/grind_flesh1.wav"
SWEP.Melee_DamageType = DMG_SLASH
SWEP.Melee_Range_Forward = 32

SWEP.SpeedMult = 0.9
SWEP.IgnoreSpeedMult = true

SWEP.CanRest = false

SWEP.HoldType_Lowered = "physgun"
SWEP.HoldType_Aim = "smg"
SWEP.HoldType_Throw = ""
SWEP.Anim_Melee = ACT_HL2MP_GESTURE_RANGE_ATTACK_ANGRY