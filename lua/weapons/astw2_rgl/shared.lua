
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Granategewehr"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A K98-based grenade launcher. Loaded from the muzzle."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses rifle grenades."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_k98_rg.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 600
SWEP.Primary.Recoil = 500
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_rg"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = "astw2_riflegrenade_launched"
SWEP.ProjectileForce = 5000
SWEP.ProjectileAngle = Angle(90, 0, 0)

SWEP.Sound = "weapons/grenade_launcher1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.UniqueFiremode = "MZZL"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true



SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG