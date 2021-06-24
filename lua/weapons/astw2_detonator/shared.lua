
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Detonator"
SWEP.Category = "ASTW2 - Throwables"
SWEP.Slot = 4
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "A radio-operated detonation trigger for remote explosive devices such as C4."
SWEP.Instructions = "ATTACK1 to trigger placed remote explosives."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_eq_detonator.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 1
SWEP.Primary.Acc = 1 / 55
SWEP.Primary.Recoil = 350
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ""
SWEP.Primary.ClipSize = -1

SWEP.Sound = "weapons/slam/mine_mode.wav"
SWEP.Sound_Vol = 75
SWEP.Sound_Pitch = 100
SWEP.Melee = false
SWEP.NPCUnusable = true
SWEP.NoCrosshair = true
SWEP.UniqueFiremode = "RMTE"

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 0
SWEP.CannotChamber = true
SWEP.Special = "detonator"

SWEP.CanRest = false

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "pistol"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SLAM

function SWEP:PrimaryAttack()
    self:Detonator()
end