
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "PSG-1"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Rare, custom sniper rifle based on the G3 pattern."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .308 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_psg1.mdl"

SWEP.Primary.Damage = 50
SWEP.Primary.Delay = 60 / 120
SWEP.Primary.Acc = 1 / 1000
SWEP.Primary.Recoil = 175
SWEP.Primary.RecoilAcc = 75
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".308"
SWEP.Primary.ClipSize = 10

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/g3sg1/g3sg1-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 130
SWEP.Sound_Magout = "weapons/g3sg1/g3sg1_clipout.wav"
SWEP.Sound_Magin = "weapons/g3sg1/g3sg1_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mp5navy/mp5_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_762mm"

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.Bipod = true

SWEP.Magnification = 2.5

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/simple.png")
SWEP.TrueScopeStab = 256

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG