
SWEP.Spawnable = IsMounted("ep2")
SWEP.AdminOnly = false
SWEP.Base = "astw2_base"

SWEP.PrintName = "SPAR-3"
SWEP.Category = "ASTW2 - Marksman Rifles"
SWEP.Slot = 3
SWEP.Author = "Arctic"
SWEP.Contact = "/id/ArcticWinterZzZ/"
SWEP.Purpose = "Alien sniper rifle. Uses magnetically accelerated dark energy pellets focussed on a thin point to produce a high-powered armor-piercing plasma round. Requires Episode 2."
SWEP.Instructions = "ATTACK2 to aim, ATTACK1 to fire. Uses pulse ammo."

SWEP.ViewModel = nil
SWEP.WorldModel = "models/weapons/w_snip_spar3.mdl"

SWEP.Primary.Damage = 60
SWEP.Primary.Delay = 60 / 240
SWEP.Primary.Acc = 1 / 1000
SWEP.Primary.Recoil = 250
SWEP.Primary.RecoilAcc = 100
SWEP.Primary.Num = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "ar2"
SWEP.Primary.ClipSize = 5

SWEP.Projectile = nil
SWEP.ProjectileForce = 2500

SWEP.Sound = "npc/sniper/sniper1.wav"
SWEP.Sound_Vol = 100
SWEP.Sound_Pitch = 100
SWEP.Sound_Magout = "weapons/ar2/ar2_reload_rotate.wav"
SWEP.Sound_Magin = "npc/sniper/reload1.wav"
SWEP.Sound_Boltpull = ""
SWEP.Sound_BoltActionDelay = 0
SWEP.Sound_BoltAction = "npc/sniper/echo1.wav"

SWEP.Secondary.Ammo = nil

SWEP.Effect_MuzzleFlash = "astw2_muzzleflash_combine"
SWEP.Tracer = "astw2_trailtracer"

SWEP.MagDrop = ""

SWEP.ReloadTime = 2
SWEP.CannotChamber = true

SWEP.Magnification = 2.5

SWEP.TrueScope = true // Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/cradle.png")

SWEP.HoldType_Lowered = "passive"
SWEP.HoldType_Aim = "ar2"
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG