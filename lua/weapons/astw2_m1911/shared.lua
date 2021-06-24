
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "M1911"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "One of the most iconic handguns in the world. Used worldwide for the better part of a century. God made man, but Sam Colt made them equal."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .45 Auto ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_pist_m1911.mdl"

SWEP.Primary.Damage = 16
SWEP.Primary.Delay = 60 / 350
SWEP.Primary.Acc = 1 / 65
SWEP.Primary.Recoil = 250
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".45"
SWEP.Primary.ClipSize = 7

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/usp/usp_unsil-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 110
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/usp/usp_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 1.5

SWEP.CanRest = false

SWEP.CannotChamber = false

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
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL