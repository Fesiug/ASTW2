
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Python Desperado"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Real men fire this gun two handed - their fathers use one. Doubles fire rate, reduces accuracy significantly, and increases recoil tremendously. Chance to break wrist if blood testosterone level is below 5%. If you've ever so much as looked at a soy bean - leave immediately."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .357 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_357.mdl"

SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 60 / 300
SWEP.Primary.Acc = 1 / 50
SWEP.Primary.Recoil = 600
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = ".357"
SWEP.Primary.ClipSize = 6

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/357/357_fire2.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100

SWEP.UniqueFiremode = "DACT"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.5
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
SWEP.HoldType_Aim = "pistol"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER