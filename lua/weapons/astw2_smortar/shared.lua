
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Shoulder Mortar"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A shoulder-launched recoilless mortar system. The mortar round has a long arming time, and must be fired in an indirect arcing trajectory, or it will fail to detonate."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses Rocket ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_pschreck.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 300
SWEP.Primary.Recoil = 400
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_rocket"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = "astw2_mortar_rocket_launched"
SWEP.ProjectileForce = 7500
SWEP.ProjectileAngle = Angle(0, 0, 0)

SWEP.Sound = "weapons/mortar/mortar_fire1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.UniqueFiremode = "SACT"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "rpg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG