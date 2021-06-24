
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Keyboard"
SWEP.Category = "ASTW2 - Melee"
SWEP.Slot = 0
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A computer keyboard, which can be used for bashing."
SWEP.Instructions = "ATTACK2 to aim. ATTACK1 to swing weapon."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_keyboard.mdl"

SWEP.Primary.Damage = 10
SWEP.Primary.Delay = 0.1
SWEP.Primary.Acc = 1 / 55
SWEP.Primary.Recoil = 0
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = ""
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 1

SWEP.Projectile = nil
SWEP.ProjectileForce = 250
SWEP.ProjectileIsGrenade = false

SWEP.Sound = "physics/body/body_medium_impact_hard6.wav"
SWEP.Sound_Vol = 75
SWEP.Sound_Pitch = 125
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/usp/usp_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 0
SWEP.CannotChamber = true
SWEP.HasDetonator = false

SWEP.Melee = true // Whether to use the melee attack of the gun.
SWEP.Melee_Swing = true // Whether to use grenade-style windup instead of reflex attack.
SWEP.Melee_Range = 48 // Range of the melee attack trace.
SWEP.Melee_SwingTime = 0.5
SWEP.Melee_HitSound = "physics/metal/metal_computer_impact_hard1.wav"
SWEP.Melee_HitHumanSound = "physics/body/body_medium_impact_hard5.wav"
SWEP.Melee_DamageType = DMG_CLUB

SWEP.SpeedMult = 0.9
SWEP.IgnoreSpeedMult = true

SWEP.CanRest = false

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "pistol"
SWEP.HoldType_Throw = "melee"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

function SWEP:OnMeleeHit( mtr )
    local say = ""

    for i = 0, math.random(3, 32) do
        say = say .. string.char( math.random(32, 126) )
    end

    self.Owner:ConCommand("say " .. say)
end