
SWEP.Spawnable = true
SWEP.AdminOnly = true
SWEP.Base = "astw2_base"

SWEP.PrintName = "Minigun"
SWEP.Category = "ASTW2 - Machine Guns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "The M134D 'Minigun' is so called relative to its larger cousin, the 20mm Vulcan rotary autocannon. But don't let this fool you - there is nothing 'miniature' about this gun. It has an effective fire rate of 4000 RPM, the highest out of any other weapon in-game, and fires full-sized 7.62mm rifle cartridges. Whomever holds this is definitively the biggest, baddest, meanest son-of-a-bitch you won't mess with twice."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 7.62mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_mach_minigun.mdl"

SWEP.Primary.Damage = 24
SWEP.Primary.Delay = 60 / 1000
SWEP.Primary.Acc = 1 / 25
SWEP.Primary.Recoil = 85
SWEP.Primary.RecoilAcc = 5
SWEP.Primary.Num = 4
SWEP.TracerOverride = 4
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "7.62mm"
SWEP.Primary.ClipSize = 500
SWEP.BulletsPerShot = 4

SWEP.Projectile = nil
SWEP.ProjectileForce = 200

SWEP.Sound = "weapons/m249/m249-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 150
SWEP.Sound_Magout = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Magin = "weapons/m249/m249_boxin.wav"
SWEP.Sound_Boltpull = "weapons/galil/galil_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 3.25
SWEP.CannotChamber = true

SWEP.MuzzlePosOverride = Vector(2, 46, -3)

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2