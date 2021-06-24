AddCSLuaFile()

ASTW2_INSTALLED = true

CreateConVar( "astw2_limitslots", 0, FCVAR_ARCHIVE, "(0, 1) Whether slots should be limited. Players can only carry one weapon per slot and must drop a weapon to pick up a new one. This can be done by using the \"drop\" command." )
CreateConVar( "astw2_infammo", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(0, 1) Whether or not to enable infinite ammo. Players can reload even if they have no ammunition.")
CreateConVar( "astw2_npcs_spawnready", 0, FCVAR_ARCHIVE, "")
CreateConVar( "astw2_hipfire_crosshair", 0, FCVAR_ARCHIVE, "")
CreateConVar( "astw2_resting", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar( "astw2_rootintootin", 2, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar( "astw2_recoilmult", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(float) How much recoil should be multiplied by." )
CreateConVar( "astw2_damagemult", 1, FCVAR_ARCHIVE, "(float) How much damage should be multiplied by.")
CreateConVar( "astw2_accuracymult", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(float) How much accuracy should be multiplied by." )
CreateConVar( "astw2_accuracymult_shotgun", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(float) How much accuracy should be multiplied by for shotguns." )
CreateConVar( "astw2_heatmult", 1, FCVAR_ARCHIVE, "(float) How much accumulated heat should be multiplied by.")
CreateConVar( "astw2_speedmult", 0.5, FCVAR_ARCHIVE, "(float) How much speed should be multiplied by while aiming.")
CreateConVar( "astw2_variance", 0, FCVAR_ARCHIVE, "(float) How much the damage varies by. 1 means damage varies from 0% - 200%.")
CreateConVar( "astw2_speedmult_enabled", 1, FCVAR_ARCHIVE, "(0, 1) Whether speed should be slowed down while aiming.")
CreateConVar( "astw2_seeshieldcollision", 0, FCVAR_ARCHIVE, "")
CreateConVar( "astw2_always_active", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(0, 1) Whether to just make the weapons always active.")
CreateConVar( "astw2_force_camera", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(0, 1) Whether to force server camera settings.")
CreateConVar( "astw2_forced_aimmode", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(0, 1) Which camera mode to use while aiming.")
CreateConVar( "astw2_forced_passivemode", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(0, 1) Which camera mode to use while not aiming.")
CreateConVar( "astw2_force_alwayson", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar( "astw2_keepc4", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(0, 1) Whether or not to keep placed C4 on death instead of removing it.")
CreateConVar( "astw2_npc_equalstanding", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "(0, 1)")
CreateConVar( "astw2_bashing", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar( "astw2_force_effect_minlevel_1", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar( "astw2_removenpcweapons", 0, FCVAR_ARCHIVE, "")
CreateConVar( "astw2_hipfire", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar( "astw2_toggle", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")

CreateClientConVar("astw2_camera_enabled", 1, true, false, "Whether or not to enable the ASTW2 camera. Highly recommended to leave this on.")
CreateClientConVar("astw2_camera_aimmode", 1, true, false, "Which camera mode to use while aiming.")
CreateClientConVar("astw2_camera_passivemode", 1, true, false, "Which camera mode to use while not aiming.")
CreateClientConVar("astw2_camera_relativemotion", 1, true, false, "")
CreateClientConVar("astw2_camera_truescopes", 1, true, false, "Whether to use true scopes while aiming down sniper rifles.")
CreateClientConVar("astw2_camera_anticlip", 1, true, false, "Enable anticlip methods in immersive cam mode. May cause 'invisible head' glitch.")
CreateClientConVar("astw2_camera_shoulder", 1, true, false, "")
CreateClientConVar("astw2_blur", 0, true, false, "Whether to use a blur effect when aiming.")
CreateClientConVar("astw2_quality", 3, true, false, "")
CreateClientConVar("astw2_allthetime", 0, true, false, "Whether to use third person ALL the time, instead of just when a thirdperson weapon is equipped.")
CreateClientConVar("astw2_hudallthetime", 0, true, false, "")
CreateClientConVar("astw2_crosshair_enable", 1, true, false, "Whether to enable the worldspace crosshair.")
CreateClientConVar("astw2_crosshair_nocircle", 0, true, false, "")
CreateClientConVar("astw2_crosshair_size", 64, true, false, "")
CreateClientConVar("astw2_crosshair_image", "crosshairs/dot.png", true, false, "")
CreateClientConVar("astw2_crosshair_r", 255, true, false, "Red channel of crosshair color.")
CreateClientConVar("astw2_crosshair_g", 255, true, false, "Green channel of crosshair color.")
CreateClientConVar("astw2_crosshair_b", 255, true, false, "Blue channel of crosshair color.")
CreateClientConVar("astw2_crosshair_aim_r", 255, true, false, "Red channel of crosshair aim color which appears when aiming at an enemy.")
CreateClientConVar("astw2_crosshair_aim_g", 0, true, false, "Blue channel of crosshair aim color which appears when aiming at an enemy.")
CreateClientConVar("astw2_crosshair_aim_b", 0, true, false, "Green channel of crosshair aim color which appears when aiming at an enemy.")
CreateClientConVar("astw2_scope_jiggle", 1, true, false, "")
CreateClientConVar("astw2_shelltime", 5, true, false, "")
CreateClientConVar("astw2_hud_enabled", 1, true, false, "")
CreateClientConVar("astw2_hud_static", 1, true, false, "")
CreateClientConVar("astw2_hud_r", 255, true, false, "")
CreateClientConVar("astw2_hud_g", 255, true, false, "")
CreateClientConVar("astw2_hud_b", 255, true, false, "")
CreateClientConVar("astw2_hud_d_r", 255, true, false, "")
CreateClientConVar("astw2_hud_d_g", 0, true, false, "")
CreateClientConVar("astw2_hud_d_b", 0, true, false, "")

CreateClientConVar("astw2_cc_drawplayer", 1, true, false, "")
CreateClientConVar("astw2_cc_attachment", 0, true, false, "")
CreateClientConVar("astw2_cc_up", 16, true, false, "")
CreateClientConVar("astw2_cc_right", 8, true, false, "")
CreateClientConVar("astw2_cc_forward", -64, true, false, "")
CreateClientConVar("astw2_cc_shrinkhead", 0, true, false, "")
CreateClientConVar("astw2_cc_speedcomp", 1, true, false, "")
CreateClientConVar("astw2_cc_lerp", 0.5, true, false, "")
CreateClientConVar("astw2_ccp_drawplayer", 1, true, false, "")
CreateClientConVar("astw2_ccp_attachment", 0, true, false, "")
CreateClientConVar("astw2_ccp_up", 16, true, false, "")
CreateClientConVar("astw2_ccp_right", 8, true, false, "")
CreateClientConVar("astw2_ccp_forward", -64, true, false, "")
CreateClientConVar("astw2_ccp_shrinkhead", 0, true, false, "")
CreateClientConVar("astw2_ccp_speedcomp", 0, true, false, "")
CreateClientConVar("astw2_ccp_lerp", 0.5, true, false, "")

CreateConVar("astw2_cc_drawplayer_f", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_cc_attachment_f", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_cc_up_f", 16, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_cc_right_f", 8, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_cc_forward_f", -64, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_cc_shrinkhead_f", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_cc_speedcomp_f", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_cc_lerp_f", 0.5, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_ccp_drawplayer_f", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_ccp_attachment_f", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_ccp_up_f", 16, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_ccp_right_f", 8, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_ccp_forward_f", -64, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_ccp_shrinkhead_f", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_ccp_speedcomp_f", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")
CreateConVar("astw2_ccp_lerp_f", 0.5, FCVAR_ARCHIVE + FCVAR_REPLICATED, "")

list.Add("NPCUsableWeapons", {class = "astw2_random_all", title = "ASTW2 - Random All"})
list.Add("NPCUsableWeapons", {class = "astw2_random_tier0", title = "ASTW2 - Random Tier 0"})
list.Add("NPCUsableWeapons", {class = "astw2_random_tier1", title = "ASTW2 - Random Tier 1"})
list.Add("NPCUsableWeapons", {class = "astw2_random_tier2", title = "ASTW2 - Random Tier 2"})
list.Add("NPCUsableWeapons", {class = "astw2_random_tier3", title = "ASTW2 - Random Tier 3"})

hook.Add( "PlayerCanPickupWeapon", "astw2_pickup", function( ply, wep )
    if GetConVar("astw2_limitslots"):GetBool() then
        for k, v in pairs( ply:GetWeapons() ) do
            if (v:GetSlot() == wep:GetSlot()) and wep:GetSlot() != 4 and v != wep and wep:GetClass() != "astw2_fists" and wep:GetClass() != "gmod_tool" and wep:GetClass() != "weapon_physgun" and wep:GetClass() != "weapon_camera" then
                return false
            end
        end
        return true
    end
end )

if SERVER then

    util.AddNetworkString( "ASTW2_det_trigger" )

    local ASTW2_det_trigger = function( len, ply )

    for _, k in pairs(ents.GetAll()) do
        if k.Detonatable and k.Owner == ply then
            k:DetonatorTrigger()
        end
    end


    end

    net.Receive( "ASTW2_det_trigger", ASTW2_det_trigger )

    elseif CLIENT then

    function ASTW2_det_trigger()
        net.Start( "ASTW2_det_trigger" )
        net.SendToServer()
    end

    concommand.Add( "detonator_trigger", ASTW2_det_trigger )

    end

concommand.Add( "astw2_switch_sides", function( ply, cmd, args )
    RunConsoleCommand( "astw2_camera_shoulder", GetConVar("astw2_camera_shoulder"):GetInt() * -1 )
end )

concommand.Add( "drop", function( ply, cmd, args )
    if !ply:GetActiveWeapon():IsValid() then return end
    if ply:GetActiveWeapon():IsScripted() then
        ply:GetActiveWeapon():Holster()
        if ply:GetActiveWeapon().ProjectileIsGrenade then
            ply:GetActiveWeapon():TakePrimaryAmmo(ply:GetActiveWeapon().BulletsPerShot)
        else
            ply:GiveAmmo(ply:GetActiveWeapon():Clip1(), ply:GetActiveWeapon().Primary.Ammo, true)
            ply:GetActiveWeapon():SetClip1(0)
            ply:GetActiveWeapon().Primary.DefaultClip = 0
        end
    end
    ply:DropWeapon( ply:GetActiveWeapon() )
end )

local ammotable = {}
ammotable["9mm"] = "9mm Rounds"
ammotable[".45"] = ".45 Auto Rounds"
ammotable[".357"] = ".357 Magnum Rounds"
ammotable["5mm"] = "5mm Rounds"
ammotable["5.56mm"] = "5.56mm Rounds"
ammotable["7.62mm"] = "7.62mm Rounds"
ammotable[".308"] = ".308 Rounds"
ammotable[".22"] = ".22 Rounds"
ammotable["12.7mm"] = "12.7mm Rounds"
ammotable["12g"] = "12 Gauge Rounds"
ammotable["astw2_grenade_flash"] = "Stun Grenades"
ammotable["astw2_grenade_frag"] = "Frag Grenades"
ammotable["astw2_grenade_regen_smoke"] = "Rejuvenative Smoke Grenades"
ammotable["astw2_grenade_smoke"] = "Smoke Grenades"
ammotable["astw2_grenade_incendiary"] = "Incendiary Grenades"
ammotable["astw2_grenade_gas"] = "Gas Grenades"
ammotable["astw2_petrolbomb"] = "Petrol Bombs"
ammotable["astw2_rocket"] = "Rockets"
ammotable["astw2_spud"] = "Spuds"
ammotable["astw2_rg"] = "Rifle Grenades"
ammotable["astw2_lam"] = "Light Attack Mines"
ammotable["astw2_he"] = "HE Charges"
ammotable["astw2_throwing_knife"] = "Throwing Knives"

for v, k in pairs(ammotable) do
    game.AddAmmoType({
        name = v,
        dmgtype = DMG_BULLET,
        tracer = TRACER_LINE_AND_WHIZ
    })
    if CLIENT then
        language.Add( v .. "_ammo", k )
    end
end

hook.Add("PlayerDeath", "ASTW2RemoveC4OnDeath", function()
    if GetConVar("astw2_keepc4"):GetBool() then return end
    for _, k in pairs(ents.GetAll()) do
        if k.Detonatable and k.Owner == ply then
            k:Remove()
        end
    end
end)

hook.Add("PopulateMenuBar", "astw2_npcweapon_menu", function ( menubar )
    local m = menubar:AddOrGetMenu("ASTW2 Weapon Override")
    local weaponlist = weapons.GetList()

    table.SortByMember( weaponlist, "PrintName", true )

    for i, k in pairs(weaponlist) do
        if weapons.IsBasedOn(k.ClassName, "astw2_base") and (k.WeaponIsShield or !k.Melee) and !k.NPCUnusable and k.Spawnable then
            m:AddCVar(k.PrintName, "gmod_npcweapon", k.ClassName)
        end
    end
end)

hook.Add("PlayerSpawnedNPC", "astw2_force_npc_weapon", function( ply, ent )
    local whitelist = {
        ["npc_combine_s"] = true,
        ["npc_metropolice"] = true,
        ["npc_citizen"] = true,
        ["npc_monk"] = true,
        ["npc_alyx"] = true,
        ["npc_barney"] = true,
    }
    if whitelist[ent:GetClass()] then
        local class = GetConVar("gmod_npcweapon"):GetString()

        if weapons.IsBasedOn(class, "astw2_base") and (!weapons.Get(class).AdminOnly or ply:IsAdmin()) then
            ent:Give(class)
        end
    end
end)