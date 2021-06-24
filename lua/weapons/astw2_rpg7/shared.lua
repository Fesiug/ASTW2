
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "RPG-7"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Reloadable HEAT rocket launcher. Utilizes the shaped charge Munroe-Neumann effect to fire a stream of piercing copper into its target, giving it the ability to kill anything it hits directly. Its trajectory and power is between the Recoilless Rifle and ATX. Its rockets are active-boosted, meaning they have a flatter trajectory than the Recoilless Rifle, but they are heavier than the ATX's rockets, making them slower."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses Rocket ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_gl_rpg7.mdl"

SWEP.Primary.Damage = 450
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 400
SWEP.Primary.Recoil = 100
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_rocket"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = "astw2_rpg_rocket_launched"
SWEP.ProjectileForce = 5000
SWEP.ProjectileAngle = Angle(0, 0, 0)

SWEP.Sound = "weapons/rpg/rocketfire1.wav"
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