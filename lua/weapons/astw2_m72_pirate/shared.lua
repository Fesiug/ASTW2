
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M79 'Pirate Gun'"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Yo ho ho, and a handful of gun. This M79 grenade launcher has been sawn off to an absurd degree, reducing its size but also reducing effective range."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses rifle grenades."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_m72_pirate.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 200
SWEP.Primary.Recoil = 500
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_rg"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = "astw2_riflegrenade_launched"
SWEP.ProjectileForce = 3500
SWEP.ProjectileAngle = Angle(90, 0, 0)

SWEP.Sound = "weapons/grenade_launcher1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 150
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.UniqueFiremode = "BRKE"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.5
SWEP.CannotChamber = true

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
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER