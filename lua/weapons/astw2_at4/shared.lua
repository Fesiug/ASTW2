
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "ATX"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "75mm reloadable ATGM launcher. Fires guided missiles that 'Ride' a laser beam emitted by the ATX's control unit."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses Rocket rounds."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_rocket_launcher.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 500
SWEP.Primary.Recoil = 200
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_rocket"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = "astw2_at4_rocket_launched"
SWEP.ProjectileForce = 2500
SWEP.ProjectileAngle = Angle(0, 0, 0)

SWEP.UniqueFiremode = "ELEC"

SWEP.Sound = "weapons/rpg/rocketfire1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.Secondary.Ammo = nil

SWEP.Tracking = true // Allows weapon to provide tracking output. Use weapon:GetHomingTarget() to receive the vector where the player is pointing.
SWEP.HasVisibleLaser = true
SWEP.LaserTexture = Material( "effects/redflare" ) // Laser tracker texture. Works even if no tracking is used. Does not accurately reflect aim point. Should be Material( "texture_path" )
SWEP.TrackingRange = 15000 // Maximum range of laser tracker

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.Magnification = 1.37

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/shadow.png")

SWEP.Effect_MuzzleAttachment = 2

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "rpg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG