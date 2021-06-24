
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "T-Gewehr 1918"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Heavy anti-tank rifle developed by Imperial Germany in the First World War as a response to British armored fighting vehicles, which were able to resist all normal bullets."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12.7mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_tgewehr.mdl"

SWEP.Primary.Damage = 125
SWEP.Primary.Delay = 60 / 45
SWEP.Primary.Acc = 1 / 450
SWEP.Primary.Recoil = 400
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12.7mm"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/awp/awp1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 80
SWEP.Sound_Magout = "weapons/awp/awp_bolt.wav"
SWEP.Sound_Magin = "weapons/shotgun/shotgun_reload3.wav"
SWEP.Sound_Boltpull = "weapons/awp/awp_bolt.wav"

SWEP.ExplosiveDamage = 65
SWEP.ExplosiveRadius = 32

SWEP.UniqueFiremode = "BOLT"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_127mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.Magnification = 1.0

SWEP.MuzzlePosOverride = Vector(2, 56, -17)

SWEP.TrueScope = false // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/specter.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW