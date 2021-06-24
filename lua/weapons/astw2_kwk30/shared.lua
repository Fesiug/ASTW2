
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "KwK30 L/55"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "The 2cm Kampfwagenkanone is an autocannon used by the German army during the Spanish Civil War and World War 2. It was primarily used as the main armament of the Panzer 2 light tank and Sdkfz. 222 armored car. This one has been modified for use by humans, and it hits exactly as hard as you'd expect a gun for tanks to. This is a definitive man-portable assault cannon, providing anyone strong enough to wield it the power of a tank. It is worth mentioning that no human should ever be able to operate this weapon without a vehicle carrying it around, though that won't stop you."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses rifle grenades."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_kwk30.mdl"

SWEP.Primary.Damage = 300
SWEP.Primary.Delay = 60 / 100
SWEP.Primary.Acc = 1 / 600
SWEP.Primary.Recoil = 200
SWEP.Primary.RecoilAcc = 50
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "astw2_rg"
SWEP.Primary.ClipSize = 10

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Projectile = "astw2_kwk30_round"
SWEP.ProjectileForce = 10000
SWEP.ProjectileAngle = Angle(90, 0, 0)

SWEP.Sound = "ambient/explosions/explode_4.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 125
SWEP.Sound_Magout = "weapons/m249/m249_coverup.wav"
SWEP.Sound_Magin = "weapons/m249/m249_boxin.wav"
SWEP.Sound_Boltpull = "weapons/galil/galil_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_20mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 3.25
SWEP.CannotChamber = false

SWEP.Bipod = true

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW