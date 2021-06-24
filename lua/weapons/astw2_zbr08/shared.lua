
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Zbr. 08"
SWEP.Category = "ASTW2 - Machine Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Czech compact SMG in .32 ACP. An unusual design with a wire stock and grip-embedded magazine. While it superficially resembles the M-11, it has nothing to do with it. Small enough to fit in most pistol holsters."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_smg_zbr08.mdl"

SWEP.Primary.Damage = 11
SWEP.Primary.Delay = 60 / 900
SWEP.Primary.Acc = 1 / 80
SWEP.Primary.Recoil = 125
SWEP.Primary.RecoilAcc = 30
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5mm"
SWEP.Primary.ClipSize = 30

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/mac10/mac10-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 185
SWEP.Sound_Magout = "weapons/tmp/tmp_clipout.wav"
SWEP.Sound_Magin = "weapons/tmp/tmp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/mac10/mac10_boltpull.wav"

SWEP.Special = "melee"
SWEP.Melee = false // Whether to use the melee attack of the gun.
SWEP.Melee_Damage = 10
SWEP.Melee_Range = 8 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 1
SWEP.Melee_HitSound = "physics/metal/weapon_impact_hard1.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB
SWEP.Anim_Melee = ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 1.5
SWEP.CannotChamber = false

SWEP.CanRest = false

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "revolver"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2