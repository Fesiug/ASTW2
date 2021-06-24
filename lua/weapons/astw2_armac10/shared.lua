
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "ARMAC-10"
SWEP.Category = "ASTW2 - SMGs"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Some sort of SMG based on the MAC-10 with furniture from an AR-15 pattern assault rifle."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .45 Auto ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_smg_macstrosity.mdl"

SWEP.Primary.Damage = 16
SWEP.Primary.Delay = 60 / 800
SWEP.Primary.Acc = 1 / 85
SWEP.Primary.Recoil = 150
SWEP.Primary.RecoilAcc = 65
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = ".45"
SWEP.Primary.ClipSize = 32

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/mac10/mac10-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 85
SWEP.Sound_Magout = "weapons/tmp/tmp_clipout.wav"
SWEP.Sound_Magin = "weapons/tmp/tmp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mac10/mac10_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.CanRest = false

SWEP.Special = "melee"
SWEP.Melee = false // Whether to use the melee attack of the gun.
SWEP.Melee_Damage = 10
SWEP.Melee_Range = 8 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 0.25
SWEP.Melee_HitSound = "physics/metal/weapon_impact_hard1.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.Anim_Melee = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE