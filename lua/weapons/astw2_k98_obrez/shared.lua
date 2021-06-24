
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "K98 Obrez"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A cut-down version of the Kar98K rifle. This type of weapon was commonly given to rear-line personnel as a 'Defense Weapon', as it was possible but not expected that they should engage in combat."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .308 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_k98_obrez.mdl"

SWEP.Primary.Damage = 60
SWEP.Primary.Delay = 60 / 80
SWEP.Primary.Acc = 1 / 50
SWEP.Primary.Recoil = 500
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".308"
SWEP.Primary.ClipSize = 5

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/scout/scout_fire-1.wav"
SWEP.Sound_Vol = 150
SWEP.Sound_Pitch = 85
SWEP.Sound_Magout = "weapons/k98_clipin2.wav"
SWEP.Sound_Magin = "weapons/k98_clipin.wav"
SWEP.Sound_Boltpull = "weapons/k98_singleshotreload.wav"
SWEP.Sound_BoltAction = "weapons/scout/scout_bolt.wav"

SWEP.UniqueFiremode = "BOLT"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_762mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

SWEP.MuzzlePosOverride = Vector(0, 18, -6)

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
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG