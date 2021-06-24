
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Five-seveN"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Belgian automatic handgun using PDW ammunition. The rounds have a rifle-round-like design, allowing more to be carried in a magazine. Their pointed tips also aid in penetrating soft body armor."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_pist_fiveseven.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 60 / 350
SWEP.Primary.Acc = 1 / 75
SWEP.Primary.Recoil = 200
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "5mm"
SWEP.Primary.ClipSize = 20

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/fiveseven/fiveseven-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/usp/usp_sliderelease.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_5mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 1.5
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

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "revolver"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.Anim_Melee = ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND