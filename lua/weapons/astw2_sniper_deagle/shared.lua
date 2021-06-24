
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Desert Eagle .357 Sniper Variant"
SWEP.Category = "ASTW2 - Pistols"
SWEP.Slot = 1
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A scoped version of the Desert Eagle. Since this gun is not very accurate without a stock, one must wonder what this is really for. A barrel extender has been attached to offer at least some degree of improved accuracy."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses .357 ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_deagle.mdl"

SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 60 / 400
SWEP.Primary.Acc = 1 / 100
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

SWEP.Magnification = 2.5

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/cradle.png")

SWEP.CanRest = false

SWEP.Special = "melee"
SWEP.Melee = false // Whether to use the melee attack of the gun.
SWEP.Melee_Damage = 10
SWEP.Melee_Range = 8 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 0.25
SWEP.Melee_HitSound = "physics/metal/weapon_impact_hard1.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "revolver"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.Anim_Melee = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE