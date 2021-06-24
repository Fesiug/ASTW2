
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "The Patriot"
SWEP.Category = "ASTW2 - Machine Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A stockless XM16E1 made specially for Legendary Soldier 'The Boss', mother of Special Operations. Combines the power of a rifle and the quick handling of a pistol. The short barrel results in a high deal of tumble, and thus makes this pistol only usable by the toughest of individuals. Due to using a different, non-infinity-symbol-shaped magazine, this gun does not have unlimited ammo."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses 5.56mm ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_smg_thepatriot.mdl"

SWEP.Primary.Damage = 18
SWEP.Primary.Delay = 60 / 900
SWEP.Primary.Acc = 1 / 50
SWEP.Primary.Recoil = 250
SWEP.Primary.RecoilAcc = 25
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56mm"
SWEP.Primary.ClipSize = 100

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/m4a1/m4a1_unsil-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 125
SWEP.Sound_Magout = "weapons/m4a1/m4a1_clipout.wav"
SWEP.Sound_Magin = "weapons/g3sg1/g3sg1_clipin.wav"
SWEP.Sound_Boltpull = "weapons/m4a1/m4a1_boltpull.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_556mm"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = false

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
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.Anim_Melee = ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND