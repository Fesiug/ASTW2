
SWEP.Spawnable = true
SWEP.AdminOnly = true
SWEP.Base = "astw2_base"

SWEP.PrintName = "Slammer CIRD"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A 'Compact Infantry Rocket Device', used for launching miniature guided missiles."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses rifle grenades."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_slammer.mdl"

SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 60 / 240
SWEP.Primary.Acc = 1 / 400
SWEP.Primary.Recoil = 500
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "astw2_rocket"
SWEP.Primary.ClipSize = 24

SWEP.Projectile = "astw2_slammer_launched"
SWEP.ProjectileForce = 10000
SWEP.ProjectileAngle = Angle(0, 0, 0)

SWEP.Sound = "weapons/grenade_launcher1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 140
SWEP.Sound_Magout = "weapons/m249/m249_coverdown.wav"
SWEP.Sound_Magin = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Boltpull = "weapons/grenade_reloadk98.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_40mm"

SWEP.Tracking = true // Allows weapon to provide tracking output. Use weapon:GetHomingTarget() to receive the vector where the player is pointing.
SWEP.HasVisibleLaser = true
SWEP.LaserTexture = Material( "effects/redflare" ) // Laser tracker texture. Works even if no tracking is used. Does not accurately reflect aim point. Should be Material( "texture_path" )
SWEP.TrackingRange = 15000 // Maximum range of laser tracker

SWEP.ReloadTime = 2.5
SWEP.CannotChamber = true

SWEP.Magnification = 1.17

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/specter.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG