
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Derringer"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A lightweight over-under pistol chambered in .22 Short, made in the thousands by Remington Arms for light self-defense. This weapon is extremely outdated, if it was ever in date, and has trouble killing even a gnat."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .22 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_pist_derringer.mdl"

SWEP.Primary.Damage = 5
SWEP.Primary.Delay = 60 / 400
SWEP.Primary.Acc = 1 / 50
SWEP.Primary.Recoil = 50
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".22"
SWEP.Primary.ClipSize = 2

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/fiveseven/fiveseven-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 195

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 2.5
SWEP.CannotChamber = true

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
SWEP.HoldType_Aim = "pistol"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.Anim_Melee = ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND