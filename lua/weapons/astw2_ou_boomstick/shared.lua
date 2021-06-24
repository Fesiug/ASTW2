
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Kozlice Boomstick"
SWEP.Category = "ASTW2 - Shotguns"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "It's time to return the dead back to their graves. With practise, it's possible to fire both barrels almost at once, enabling a rapid wrist-annihilating effect that's guaranteed to leave you more hurt than your target, or your money back."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 12 Gauge ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_boomstick.mdl"

SWEP.Primary.Damage = 10
SWEP.Primary.Delay = 60 / 1000
SWEP.Primary.Acc = 1 / 8
SWEP.Primary.Recoil = 1000
SWEP.Primary.RecoilAcc = 0
SWEP.Primary.Num = 8
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "12g"
SWEP.Primary.ClipSize = 2

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Effect_MuzzleAttachment = 2

SWEP.Sound = "weapons/xm1014/xm1014-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 150

SWEP.UniqueFiremode = "BRKE"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.5
SWEP.CannotChamber = true

SWEP.Special = "melee"
SWEP.Melee = false // Whether to use the melee attack of the gun.
SWEP.Melee_Damage = 10
SWEP.Melee_Range = 8 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 1
SWEP.Melee_HitSound = "physics/metal/weapon_impact_hard1.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB
SWEP.Anim_Melee = ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "revolver"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW