
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Mare's Leg"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Shortened lever-action rifle, popular in the old West."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .357 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_pist_maresleg.mdl"

SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 40
SWEP.Primary.Recoil = 300
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".357"
SWEP.Primary.ClipSize = 8

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/357/357_fire2.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 85
SWEP.Sound_BoltActionDelay = 0.1
SWEP.Sound_BoltActionPitch = 75
SWEP.Sound_BoltAction = "weapons/scout/scout_bolt.wav"

SWEP.UniqueFiremode = "LEVR"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_357"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.75
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
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG