
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M72 LAW"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Lightweight disposable rocket launcher. Rockets lack a booster charge, meaning they take time to accelerate. Rockets contain a HEAT warhead, allowing them to deal heavy damage against a single target, but with a poor damage radius. It does less damage than the ATX, but has a faster, lighter rocket."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses Rocket rounds."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_law.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 1000
SWEP.Primary.Recoil = 200
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_rocket"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = "astw2_law_rocket_launched"
SWEP.ProjectileForce = 5000
SWEP.ProjectileAngle = Angle(0, 0, 0)

SWEP.UniqueFiremode = "DISP"

SWEP.Sound = "weapons/rpg/rocketfire1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.Magnification = 1.0

SWEP.TrueScope = false // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/dot.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "rpg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG