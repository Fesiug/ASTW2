
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "Gas Mask"
SWEP.Category = "ASTW2 - Special"
SWEP.Slot = 0
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Soviet rubber gas mask equipped with a simple quick-latch release allowing the mask to be put on and removed very quickly. A chemical filter absorbs most types of toxic gas. However, its thick glass eye pieces and protruding nature makes it impossible to wield weapons while wearing it."
SWEP.Instructions = "Equip for immunity to toxic gas."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/nova/w_headgear.mdl"

SWEP.Primary.Damage = 12
SWEP.Primary.Delay = 1
SWEP.Primary.Acc = 1 / 55
SWEP.Primary.Recoil = 350
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ""
SWEP.Primary.ClipSize = -1

SWEP.Sound = ""
SWEP.Sound_Vol = 75
SWEP.Sound_Pitch = 100
SWEP.Melee = false
SWEP.NPCUnusable = true
SWEP.NoCrosshair = true
SWEP.UniqueFiremode = "CBRN"
SWEP.InfAmmo = true

SWEP.Secondary.Ammo = nil

SWEP.MagDrop = ""

SWEP.ReloadTime = 0
SWEP.CannotChamber = true
SWEP.Special = "detonator"

SWEP.CanRest = false
SWEP.IsGasMask = true

SWEP.HoldType_Lowered = "normal"
SWEP.HoldType_Aim = "normal"
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SLAM

function SWEP:PrimaryAttack()
    return
end