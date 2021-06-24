
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "AW-20"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Superheavy 20mm antimateriel rifle, based on the Arctic Warfare pattern. Its ACOx4 scope has less magnification than a normal AWP."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12.7mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_aw20.mdl"

SWEP.Primary.Damage = 250
SWEP.Primary.Delay = 60 / 45
SWEP.Primary.Acc = 1 / 1000
SWEP.Primary.Recoil = 600
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12.7mm"
SWEP.Primary.ClipSize = 2

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/awp/awp1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 85
SWEP.Sound_Magout = "weapons/awp/awp_clipout.wav"
SWEP.Sound_Magin = "weapons/awp/awp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltActionDelay = 0.5
SWEP.Sound_BoltAction = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltActionPitch = 85

SWEP.ExplosiveDamage = 128
SWEP.ExplosiveRadius = 32

SWEP.UniqueFiremode = "BOLT"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_20mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 1.5
SWEP.CannotChamber = false

SWEP.Magnification = 2.0

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/acog.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "rpg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW