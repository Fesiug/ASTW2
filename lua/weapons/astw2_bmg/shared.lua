
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M2 Browning"
SWEP.Category = "ASTW2 - Machine Guns"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Classic .50 caliber HMG. In use for over 100 years. This weapon is usually found crew-served, but this example seems to have been ripped from its mounting for use as a man-portable weapon. Like the Minigun, only an absolute unit could wield this SOB."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12.7mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_mach_m2bmg.mdl"

SWEP.Primary.Damage = 90
SWEP.Primary.Delay = 60 / 450
SWEP.Primary.Acc = 1 / 250
SWEP.Primary.Recoil = 600
SWEP.Primary.RecoilAcc = 50
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "12.7mm"
SWEP.Primary.ClipSize = 50

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "npc/sniper/echo1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 55
SWEP.Sound_Magout = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Magin = "weapons/m249/m249_boxin.wav"
SWEP.Sound_Boltpull = "weapons/galil/galil_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_127mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.Bipod = true

SWEP.MuzzlePosOverride = Vector(2, 64, -17)
SWEP.EjectPosOverride = Vector(0, -2, -3) // Overrides eject position. Vector.
SWEP.EjectAngOverride = Angle(0, -90, 0) // Overrides eject angle. Angle.

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "rpg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
