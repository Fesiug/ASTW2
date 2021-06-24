
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "C4"
SWEP.Category = "ASTW2 - Throwables"
SWEP.Slot = 4
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Electronically fused remote explosive. Use the 'detonator_trigger' command to detonate the bomb."
SWEP.Instructions = "ATTACK2 to aim. Hold ATTACK1 to bring explosive up, release to throw/place. Use ATTACK1 while not aiming to detonate. Release ATTACK2 to cancel. BIND 'DETONATOR_TRIGGER' TO DETONATE EXPLOSIVE!"

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_c4.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 1
SWEP.Primary.Acc = 1 / 1000
SWEP.Primary.Recoil = 350
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "astw2_he"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 1

SWEP.Projectile = "astw2_c4_placed"
SWEP.ProjectileForce = 250
SWEP.ProjectileIsGrenade = true

SWEP.Sound = "weapons/slam/throw.wav"
SWEP.Sound_Vol = 75
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/usp/usp_clipout.wav"
SWEP.Sound_Magin = "weapons/usp/usp_clipin.wav"
SWEP.Sound_Boltpull = "weapons/usp/usp_slideback.wav"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 0
SWEP.CannotChamber = true
SWEP.Special = "detonator"

SWEP.CanRest = false

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "pistol"
SWEP.HoldType_Throw = "camera"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SLAM

function SWEP:OnDeploy()
    if !self.Owner:HasWeapon( "astw2_detonator" ) then
        self.Owner:Give( "astw2_detonator" )
    end
end