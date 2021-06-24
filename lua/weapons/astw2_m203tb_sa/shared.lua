
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M203 UGL-SA TB"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Triple-barreled M203 grenade launcher on a standalone mount. Grenades can be fired in very rapid succession."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses rifle grenades."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_m203tb_sa.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 0.1
SWEP.Primary.Acc = 1 / 2500
SWEP.Primary.Recoil = 500
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_rg"
SWEP.Primary.ClipSize = 3

SWEP.Projectile = "astw2_riflegrenade_launched"
SWEP.ProjectileForce = 10000
SWEP.ProjectileAngle = Angle(90, 0, 0)

SWEP.Sound = "weapons/grenade_launcher1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/m203-open.wav"
SWEP.Sound_Magin = "weapons/m203-close.wav"
SWEP.Sound_Boltpull = "weapons/m203-load.wav"

SWEP.UniqueFiremode = "UBGL"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.HoldType_Hipfire = "crossbow"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG