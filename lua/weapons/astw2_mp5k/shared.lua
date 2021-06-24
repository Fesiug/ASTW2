
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "MP5K"
SWEP.Category = "ASTW2 - Machine Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Compact version of the MP5 SMG."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 9mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_smg_mp5k.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 60 / 900
SWEP.Primary.Acc = 1 / 85
SWEP.Primary.Recoil = 150
SWEP.Primary.RecoilAcc = 65
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "9mm"
SWEP.Primary.ClipSize = 20

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/mp5navy/mp5-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 135
SWEP.Sound_Magout = "weapons/mp5navy/mp5_clipout.wav"
SWEP.Sound_Magin = "weapons/tmp/tmp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mp5navy/mp5_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.CanRest = false

SWEP.Special = "melee"
SWEP.Melee = false // Whether to use the melee attack of the gun.
SWEP.Melee_Damage = 10
SWEP.Melee_Range = 8 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 1
SWEP.Melee_HitSound = "physics/metal/weapon_impact_hard1.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB
SWEP.Anim_Melee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "smg"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2