
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "7.5cm PaK 40"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "You've always wanted to be a tank gunner, haven't you? Well, here's the next best thing. You said your friend has a minigun? How cute. This is a mega-gun. A 75mm anti-tank cannon ripped straight off a German emplacement, this weapon is capable of taking on medium tanks head-on. You are using it as a handheld weapon. Make way, everyone else - if they won't, you will. Even the toughest of normal humans would have trouble picking up this gun, yet you can operate it at an effective fire rate of 14 rounds per minute."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses rocket ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_pak40.mdl"

SWEP.Primary.Damage = 1000
SWEP.Primary.Delay = 1
SWEP.Primary.Acc = 1 / 800
SWEP.Primary.Recoil = 200
SWEP.Primary.RecoilAcc = 50
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "astw2_rocket"
SWEP.Primary.ClipSize = 1

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Effect_MuzzleFlash = "astw2_muzzleflash_cannon"

SWEP.Projectile = "astw2_pak40_round"
SWEP.ProjectileForce = 10000
SWEP.ProjectileAngle = Angle(90, 0, 0)

SWEP.Sound = "ambient/explosions/explode_1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 85
SWEP.Sound_Magout = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Magin = "weapons/m249/m249_boxin.wav"
SWEP.Sound_Boltpull = "weapons/galil/galil_boltpull.wav"

SWEP.UniqueFiremode = "BRCH"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_75mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 3.25
SWEP.CannotChamber = true

SWEP.Bipod = true

SWEP.HoldType_Lowered = "crossbow"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW