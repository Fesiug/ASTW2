
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Single Action Army"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A single-action revolver, weapon of a different time. Only carries six shots before requiring a lengthy and complicated reload. Sliding a long silver bullet down a well greased chamber - reloading has never been so exhilerating! Use this gun only if you're pretty good."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .357 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_pist_saa.mdl"

SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 60 / 100
SWEP.Primary.Acc = 1 / 200
SWEP.Primary.Recoil = 400
SWEP.Primary.RecoilAcc = 800
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".357"
SWEP.Primary.ClipSize = 6

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/357/357_fire2.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 120
SWEP.Sound_BoltActionDelay = 0.2
SWEP.Sound_BoltAction = "weapons/awp/awp_bolt.wav"
SWEP.Sound_BoltActionPitch = 125

SWEP.UniqueFiremode = "SACT"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 3.25
SWEP.CannotChamber = true

SWEP.CanRest = false

SWEP.Special = "melee"
SWEP.Melee = false // Whether to use the melee attack of the gun.
SWEP.Melee_Damage = 10
SWEP.Melee_Range = 8 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 1
SWEP.Melee_HitSound = "physics/metal/weapon_impact_hard1.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB
SWEP.Anim_Melee = ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "revolver"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER