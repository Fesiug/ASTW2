
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M16/M203"
SWEP.Category = "ASTW2 - Assault Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "M16 assault rifle, mounted with M203 underbarrel grenade launcher. Say hello to my little friend!"
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5.56mm ammo. ATTACK1 while not aiming to fire the grenade launcher, which uses rifle grenades."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_rif_m203ugl.mdl"

SWEP.Primary.Damage = 18
SWEP.Primary.Delay = 60 / 900
SWEP.Primary.Acc = 1 / 150
SWEP.Primary.Recoil = 115
SWEP.Primary.RecoilAcc = 60
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56mm"
SWEP.Primary.ClipSize = 30
SWEP.BurstLength = 3

SWEP.Projectile = "astw2_riflegrenade_launched"
SWEP.ProjectileForce = 5000
SWEP.ProjectileAngle = Angle(90, 0, 0)

SWEP.Special = "ubgl"
SWEP.UBGL_Delay = 2
SWEP.UBGL_Sound = "weapons/grenade_launcher1.wav"

SWEP.Sound = "weapons/m4a1/m4a1_unsil-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 95
SWEP.Sound_Magout = "weapons/m4a1/m4a1_clipout.wav"
SWEP.Sound_Magin = "weapons/g3sg1/g3sg1_clipin.wav"
SWEP.Sound_Boltpull = "weapons/m4a1/m4a1_boltpull.wav"
SWEP.Sound_UBGL_1 = "weapons/m203-open.wav"
SWEP.Sound_UBGL_2 = "weapons/m203-close.wav"
SWEP.Sound_UBGL_3 = "weapons/m203-load.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_556mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.MuzzlePosOverride = Vector(1, 42, -10) // Overrides muzzle position. Vector.

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.HoldType_Hipfire = "crossbow"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2