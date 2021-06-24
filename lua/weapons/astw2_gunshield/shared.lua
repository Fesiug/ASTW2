
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Gun Shield"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A version of the steel shield fitted with a 92FS pistol. The shield has been modified and cut down to reduce its weight for more accurate shooting. The added weight reduces the recoil of the pistol and reduces its accuracy."
SWEP.Instructions = "ATTACK2 to raise shield. ATTACK1 to fire."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_gunshield.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 60 / 400
SWEP.Primary.Acc = 1 / 30
SWEP.Primary.Recoil = 100
SWEP.Primary.RecoilAcc = 20
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "9mm"
SWEP.Primary.ClipSize = 15

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "weapons/fiveseven/fiveseven-1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 135
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/usp/usp_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_ShellEject = "astw2_case_9mm"

SWEP.Melee = false // Whether to use the melee attack of the gun.
SWEP.Melee_Swing = false // Whether to use grenade-style windup instead of reflex attack.
SWEP.Melee_Range = 16 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 1
SWEP.Melee_HitSound = "physics/metal/metal_sheet_impact_hard2.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard4.wav"
SWEP.Melee_DamageType = DMG_CLUB

SWEP.ReloadTime = 2.75
SWEP.CannotChamber = false

SWEP.WeaponIsShield = true

SWEP.SpeedMult = 0.75
SWEP.IgnoreSpeedMult = true

SWEP.ShieldPosOverride = Vector( 1, 13.5, 2.5 )
SWEP.ShieldAngOverride = Angle( 170, 180, 0 )

SWEP.MuzzlePosOverride = Vector(0, 14, -7) // Overrides muzzle position. Vector.
SWEP.EjectPosOverride = Vector(0, 5, -4) // Overrides eject position. Vector.
SWEP.EjectAngOverride = Angle(-160, -90, -90) // Overrides eject angle. Angle.

SWEP.CanRest = false

SWEP.HoldType_Lowered = "slam"
SWEP.HoldType_Aim = "duel"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

function SWEP:GetShootPosASTW()
    return self:GetBorePos()
end