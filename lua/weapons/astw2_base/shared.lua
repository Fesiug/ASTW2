
-- Arctic's Simple Thirdperson Weapons - 2!
-- A remade version of my first-ever addon. Even after 3 years, still nobody else has made another base that caters to third-person usage.
-- Designed for use in third person. Comes with its own third-person camera override, which can be disabled.

include( "ai.lua" )
include( "homing.lua" )
include( "shield.lua" )
include( "melee.lua" )
include( "reload.lua" )
include( "attacks.lua" )
include( "sights.lua" )
include( "ubgl.lua" )
include( "deploy.lua" )
include( "position.lua" )
include( "think.lua" )

AddCSLuaFile( "ai.lua" )
AddCSLuaFile( "homing.lua" )
AddCSLuaFile( "shield.lua" )
AddCSLuaFile( "melee.lua" )
AddCSLuaFile( "reload.lua" )
AddCSLuaFile( "attacks.lua" )
AddCSLuaFile( "sights.lua" )
AddCSLuaFile( "ubgl.lua" )
AddCSLuaFile( "deploy.lua" )
AddCSLuaFile( "position.lua" )
AddCSLuaFile( "think.lua" )

SWEP.Spawnable = false
SWEP.AdminOnly = false
SWEP.AutoSwitchFrom = true
SWEP.AutoSwitchTo = true
SWEP.ThirdPersonWeapon = true -- Registers the weapon as third person capable with the camera. Do not change this.
SWEP.DrawCrosshair = false -- Disables the default crosshair. Do not change this.

SWEP.PrintName = ""
SWEP.Category = "ASTW2"
SWEP.Slot = 2
SWEP.Author = "Arctic"
SWEP.Contact = "https:--steamcommunity.com/id/ArcticWinterZzZ/"
SWEP.Purpose = ""
SWEP.Instructions = ""

SWEP.ViewModel = nil
SWEP.WorldModel = "" -- Weapon's world model.

SWEP.Primary.Damage = 33 -- Base damage of the weapon.
SWEP.Primary.DamageVariance = 1 -- Damage variance of the weapon, the damage done can vary up to this much. (0.0-1.0)
SWEP.Primary.Delay = 60 / 700 -- Delay between shots. 60/RPM format is preferred, as the weapon's performance is more obvious.
SWEP.Primary.Acc = 1 / 100 -- Spread of the weapon. 1/x format is preferred, as the weapon's performance is more obvious.
SWEP.Primary.Recoil = 500 -- Recoil of the weapon. A reasonable figure would be between 100 and 1000.
SWEP.Primary.RecoilAcc = 250 -- Recoil accumulation of the weapon.
SWEP.Primary.MaxRecoilAcc = 2500 -- Maximum heat accumulation.
SWEP.Primary.RecoilRecovery = 2750 -- Amount of recoil recovered per second.
SWEP.Primary.Num = 1 -- Number of projectiles fired. Mainly for shotguns. 
SWEP.BulletsPerShot = 1 -- Number of bullets taken per shot.
SWEP.Primary.Automatic = true -- Whether the gun is automatic or not.
SWEP.Primary.Ammo = "smg1" -- What ammo type the gun uses.
SWEP.Primary.ClipSize = 30 -- Clip size of the gun.
SWEP.Primary.DefaultClip = 0 -- Amount of ammo the gun comes with.

SWEP.Fire_AngleOffset = Angle(0, 0, 0)

SWEP.UniqueFiremode = "" -- Whether to name a unique firemode that isn't SEMI, AUTO, or 3BRT. E.g. DACT, SACT, BOLT, PUMP, LEVR, BRKE 

SWEP.Disposable = false -- Whether the weapon comes in disposable units, like grenades.

SWEP.Special = ""
-- Options:
-- "detonator" -- Activates the detonator.
-- "melee" -- CQC-style melee attack.
-- "unique" -- Triggers SWEP.Special(). Otherwise does nothing.
-- "uniqueaimed" -- Triggers SWEP.Special(), but only when aimed.
-- "uniquemixed" -- Triggers SWEP.Special() both on weapon down and up.
-- "ubgl" -- Fire "Projectile" when not aimed.

SWEP.Projectile = nil -- The projectile (Such as a rocket or grenade) the gun fires.
SWEP.ProjectileForce = 2500 -- The force with which the gun fires the projectile.
SWEP.ProjectileTumble = false -- Whether the projectile will tumble, like a grenade.
SWEP.ProjectileIsGrenade = false -- Whether the projectile is a grenade. Enables special general improvements.
SWEP.ProjectileAngle = Angle(0, 0, 0) -- Angle offset of the projectile.
SWEP.UBGL_Delay = 0.25
SWEP.UBGL_Sound = ""
SWEP.UBGL_Anim = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.UBGL_Ammo = "astw2_rg"

SWEP.BurstLength = 0 -- If this is more than one, you will only be able to shoot that many bullets at once.
SWEP.Effect_MuzzleAttachment = 1 -- Muzzle attachment of the weapon.
SWEP.Effect_MuzzleFlash = "astw2_muzzleflash" -- Muzzle flash effect.
SWEP.Effect_ShellAttachment = 2 -- Ejection port attachment of the weapon.
SWEP.Effect_ShellDelay = 0 -- Delay of the shell eject effect.
SWEP.Effect_ShellEject = "" -- Shell eject effect.
SWEP.Tracer = "astw2_trailtracer" -- Tracer the weapon uses.
SWEP.Suppressed = false -- Whether the weapon is suppressed.
SWEP.TracerOverride = nil -- If set, this overrides the amount of tracers the gun fires (One every X shots)
SWEP.TracerCol = nil -- Override to change tracer color. Color( 255, 255, 255 )

SWEP.ExplosiveDamage = 0 -- Explosive rounds damage. Rounds explode if this is > 0.
SWEP.ExplosiveRadius = 8 -- Radius of explosive rounds explosion.

SWEP.Melee = false -- Whether to use the melee attack of the gun.
SWEP.Melee_Damage = nil -- Set this value to use it instead of primary damage.
SWEP.Melee_Sound = "weapons/knife/knife_slash1.wav" -- Sound of the melee attack.
SWEP.Melee_Swing = false -- Whether to use grenade-style windup instead of reflex attack.
SWEP.Melee_SwingTime = 0.25
SWEP.Melee_Range = 4 -- Range of the melee attack trace.
SWEP.Melee_Range_Forward = 0 -- Range that the melee attack trace will go forward instead of upward.
SWEP.Melee_HitSound = "physics/metal/chain_impact_hard2.wav"
SWEP.Melee_HitHumanSound = "weapons/knife/knife_hit1.wav"
SWEP.Melee_DamageType = DMG_SLASH
SWEP.Melee_Trace_Offset = Angle(0, 0, 0)
SWEP.Melee_Decal = ""

SWEP.Sound = "" -- The sound of the gun.
SWEP.Sound_Vol = 100 -- How far the sound of the gun will spread. 100 is default.
SWEP.Sound_Pitch = 100 -- Pitch of the gun's sound. 100 is default.
SWEP.Sound_Magout = "weapons/ak47/ak47_clipout.wav" -- First sound played when reloading. Only active on SMG1, AR2, and Pistol holdtypes.
SWEP.Sound_Magin = "weapons/ak47/ak47_clipin.wav" -- Second sound played when reloading.
SWEP.Sound_Boltpull = "weapons/ak47/ak47_boltpull.wav" -- Last sound played when reloading, only plays when reloading from an empty magazine.
SWEP.Sound_BoltActionDelay = 0 -- Delay of the bolt-action sound.
SWEP.Sound_BoltAction = nil -- Sound that's played when the gun is fired. A "bolting" sound.
SWEP.Sound_BoltActionPitch = 100 -- Pitch of the bolting sound.
SWEP.Sound_Draw = nil -- Sound played when the weapon is drawn.
SWEP.Sound_Holster = nil -- Sound played when the weapon is holstered.
SWEP.Sound_Equip = nil -- sound played when the weapon is equipped.

SWEP.Secondary.Ammo = "" -- Ignore this.

-- RELOAD TIMES:
-- AR2: 2
-- SMG: 2
-- Pistol: 1.5
-- Revolver: 2.5
-- Shotgun: 2.5
-- Duel: 3.25
--
-- Note: Because of how the reload animation system works, you can usually switch animations and holdtypes freely. Try it!
-- i.e. Using Duel as the reload holdtype can look good with the AR2 aim holdtype.

SWEP.ReloadTime = 2 -- Time taken to reload.
SWEP.CannotChamber = false -- Whether a gun is abnormal and cannot hold an extra round in its chamber (Open bolt guns or revolvers)
SWEP.RevolverReload = false -- Whether a gun ejects all its cases upon reloading.
SWEP.InfAmmo = false -- Whether the gun has infinite ammo.

SWEP.WeaponIsShield = false -- Whether the weapon model blocks bullets.
SWEP.ShieldPosOverride = Vector( 0, 0, 0 ) -- Offset of the weapon shield.
SWEP.ShieldAngOverride = Angle( 180, 180, 0 ) -- Angle offset of weapon shield.

SWEP.NoCrosshair = false -- Overrides the player's crosshair.
SWEP.CrosshairOverride = nil -- Overrides the player's crosshair with an image.
SWEP.CrosshairSizeOverride = 1 -- Multiplies the player's crosshair size.

SWEP.Tracking = false -- Allows weapon to provide tracking output. Use weapon:GetHomingTarget() to receive the vector where the player is pointing.
SWEP.TrackMode = "SACLOS" -- Tracking mode displayed. Visual only.

SWEP.HasVisibleLaser = false
SWEP.LaserTexture = Material( "effects/redflare" ) -- Laser tracker texture. Works even if no tracking is used. Does not accurately reflect aim point. Should be Material( "texture_path" )
SWEP.TrackingRange = 30000 -- Maximum range of laser tracker

SWEP.SpeedMult = 1 -- Speed multiplier when aiming, as a fraction of convar speedmult.
SWEP.IgnoreSpeedMult = false -- Whether to ignore set speed mult in favor of own.

SWEP.HoldType_Lowered = "none" -- Holdtype used when not aiming the weapon.
SWEP.HoldType_Aim = "ar2" -- Holdtype used when aiming the weapon.
SWEP.HoldType_Hipfire = nil -- Holdtype override for hipfire.
SWEP.Anim_Reload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Animation for reloading.
SWEP.Anim_Shoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2 -- Animation for shooting.
SWEP.Anim_Melee = nil -- If this exists, use it for melee.
SWEP.HoldType_Throw = "grenade" -- Holdtype for throwing if needed

SWEP.NightScope = false
SWEP.Magnification = 1.0 -- Magnification when aiming down the weapon's sights. Increase for more magnification.
SWEP.TrueScope = false -- Whether this weapon uses "True" scopes.
SWEP.TrueScopeImage = Material("scopes/simple.png") -- Image of the weapon's true scope.
SWEP.TrueScopeStab = 128 -- How stable the scope is. Higher is better.

SWEP.CanRest = true -- The weapon can be rested on a surface to reduce recoil.
SWEP.Bipod = false -- This weapon has a bipod and gains extra benefits while resting.
SWEP.NeverHipfire = false -- This weapon cannot be hipfired, no matter what.

SWEP.DeployTime = 0.25 -- Weapon deploy time. I recommend you don't change this.
SWEP.NPCUnusable = false -- Weapon cannot be used by NPCs.

SWEP.MuzzlePosOverride = nil -- Overrides muzzle position. Vector.
SWEP.EjectPosOverride = nil -- Overrides eject position. Vector.
SWEP.EjectAngOverride = nil -- Overrides eject angle. Angle.

SWEP.IsFromNPC = false -- Don't change this.

SWEP.InfoboxOffset = Vector(16, -2, -2) -- Offset of ASTW2 HUD infobox.

if CLIENT then
    SWEP.Recoil = 0
    SWEP.RecoilDir = 0
    SWEP.LastRaiseTime = 0
    SWEP.NextRest = 0
end

function SWEP:DrawWorldModel()
    if self.WorldModel then
        self:DrawModel()
    end
end

function SWEP:GetAmmoDisplay()
end

function SWEP:SecondaryAttack()
    return false
end