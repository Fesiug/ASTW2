
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "PTI-2002"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A precision bullpup bolt-action sniper rifle by Precision Tactical Industries. Successful around the world as a counter-terror interdiction rifle, this gun's high accuracy and reliability make it a choice pick for tactical marksmen worldwide."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .308 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_bfg127.mdl"

SWEP.Primary.Damage = 80
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 1000
SWEP.Primary.Recoil = 350
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".308"
SWEP.Primary.ClipSize = 10

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/scout/scout_fire-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 85
SWEP.Sound_Magout = "weapons/awp/awp_clipout.wav"
SWEP.Sound_Magin = "weapons/awp/awp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltActionDelay = 0.15
SWEP.Sound_BoltAction = "weapons/scout/scout_bolt.wav"
SWEP.Sound_BoltActionPitch = 115

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_762mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.Magnification = 4.0

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/cradle.png")
SWEP.TrueScopeStab = 256

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG