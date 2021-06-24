
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Desert Eagle .357"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Iconic .357 Magnum, heavy pistol. Popular in movies and video games for its flashy nature, but prone to jamming. At 9 rounds, its magazine is larger than any other comparable weapon, but this is still not much, relatively speaking."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .357 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_pist_deagle.mdl"

SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 60 / 400
SWEP.Primary.Acc = 1 / 80
SWEP.Primary.Recoil = 400
SWEP.Primary.RecoilAcc = 500
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".357"
SWEP.Primary.ClipSize = 9

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/deagle/deagle-1.wav"
SWEP.Sound_Vol = 150
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/usp/usp_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_357"

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
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.Anim_Melee = ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND