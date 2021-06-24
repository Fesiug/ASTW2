
hook.Add("PopulateToolMenu", "ASTW2OptionsMenu", function()
        spawnmenu.AddToolMenuOption("Options", "ASTW2", "aswt2_options_admin", "Admin", "", "", function(panel)

            local ConVarsDefault = {
                astw2_limitslots = "0",
                astw2_enableheat = "1",
                astw2_resting = "1",
                astw2_always_active = "0",
                astw2_keepc4 = "0",
                astw2_bashing = "1",
                astw2_npc_equalstanding = "0",
                astw2_infammo = "0",
                astw2_damagemult = "1",
                astw2_variance = "0",
                astw2_accuracymult = "1",
                astw2_accuracymult_shotgun = "1",
                astw2_heatmult = "1",
                astw2_recoilmult = "1",
                astw2_speedmult_enabled = "1",
                astw2_speedmult = "0.5",
                astw2_force_camera = "0",
                astw2_force_alwayson = "0",
                astw2_forced_aimmode = "1",
                astw2_forced_passivemode = "1",
                astw2_rootintootin = "0",
                astw2_force_effect_minlevel_1 = "0",
                astw2_removenpcweapons = "0",
                astw2_hipfire = "1",
                astw2_hipfire_crosshair = "0",
            }

            panel:AddControl("ComboBox", {
                MenuButton = 1,
                Folder = "ASTW2Server",
                Options = {[ "#preset.default" ] = ConVarsDefault },
                CVars = table.GetKeys(ConVarsDefault)
            })

            panel:AddControl("Header", {
                Description = "ASTW2 Admin Options\nCreated by Arctic\nContact: https://steamcommunity.com/id/ArcticWinterZzZ/",
            })

            panel:AddControl("toggle", {
                label = "Enable Slot Limit (One weapon per slot)",
                command = "astw2_limitslots"
            })

            panel:AddControl("toggle", {
                label = "Enable Heat Accumulation",
                command = "astw2_enableheat"
            })

            panel:AddControl("toggle", {
                label = "Enable Pistol Bashing",
                command = "astw2_bashing"
            })

            panel:AddControl("toggle", {
                label = "Enable Weapon Resting",
                command = "astw2_resting"
            })

            panel:AddControl("toggle", {
                label = "Enable Hipfire",
                command = "astw2_hipfire"
            })

            panel:AddControl("toggle", {
                label = "Enable Hipfire Crosshair",
                command = "astw2_hipfire_crosshair"
            })

            panel:AddControl("toggle", {
                label = "Rootin' Tootin' Mode (Single handed pistols)",
                command = "astw2_rootintootin"
            })

            panel:AddControl("toggle", {
                label = "Force effects active (Minimum shooteffects level 1)",
                command = "astw2_force_effect_minlevel_1"
            })

            panel:AddControl("toggle", {
                label = "Remove NPC Weapons",
                command = "astw2_removenpcweapons"
            })

            panel:AddControl("toggle", {
                label = "Always Active (Disable speed mult first!)",
                command = "astw2_always_active"
            })

            panel:AddControl("toggle", {
                label = "Keep Placed C4 On Death",
                command = "astw2_keepc4"
            })

            panel:AddControl("toggle", {
                label = "NPC Equality (Equal stats for NPC weapons)",
                command = "astw2_npc_equalstanding"
            })

            panel:AddControl("toggle", {
                label = "NPCs spawn with loaded guns",
                command = "astw2_npcs_spawnready"
            })

            panel:AddControl("toggle", {
                label = "Enable Infinite Ammo",
                command = "astw2_infammo"
            })

            panel:AddControl("Header", {
                Description = "Weapon Stat Tweaks",
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Damage Multiplier",
                command = "astw2_damagemult",
                min = 0,
                max = 10,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Damage Variance",
                command = "astw2_variance",
                min = 0,
                max = 1,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Spread Multiplier",
                command = "astw2_accuracymult",
                min = 0,
                max = 4,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Shotgun Spread Multiplier",
                command = "astw2_accuracymult_shotgun",
                min = 0,
                max = 4,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Heat Multiplier",
                command = "astw2_heatmult",
                min = 0,
                max = 10,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Recoil Multiplier",
                command = "astw2_recoilmult",
                min = 0,
                max = 10,
            })

            panel:AddControl("toggle", {
                label = "Enable aiming speed multiplier (Do not toggle in action)",
                command = "astw2_speedmult_enabled"
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Speed Multiplier",
                command = "astw2_speedmult",
                min = 0.1,
                max = 1,
            })

            panel:AddControl("Header", {
                Description = "Server Camera Settings",
            })

            panel:AddControl("toggle", {
                label = "Force server camera settings",
                command = "astw2_force_camera"
            })

            panel:AddControl("toggle", {
                label = "Force camera always on",
                command = "astw2_force_alwayson"
            })

            panel:AddControl("Header", {
                Description = "0: Immersive\n1: Over-The-Shoulder\n2: GunCam\n3: GunCam Alternate\n4: Far\n-1: Create-A-Cam",
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Aim Camera Type",
                command = "astw2_forced_aimmode",
                min = -1,
                max = 4,
            })

            panel:AddControl("Header", {
                Description = "0: Immersive\n1: Over-The-Shoulder\n2: Far\n3: Top-Down\n-1: Create-A-Cam",
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Passive Camera Type",
                command = "astw2_forced_passivemode",
                min = -1,
                max = 3,
            })
        end)

        spawnmenu.AddToolMenuOption("Options", "ASTW2", "aswt2_options_client", "Client", "", "", function(panel)

            local ConVarsDefault = {
                astw2_camera_enabled = "1",
                astw2_hud_enabled = "1",
                astw2_hud_static = "1",
                astw2_shelltime = "5",
                astw2_crosshair_enable = "1",
                astw2_crosshair_size = "64",
                astw2_camera_truescopes = "1",
                astw2_camera_anticlip = "1",
                astw2_blur = "0",
                astw2_quality = "3",
                astw2_allthetime = "0",
                astw2_hudallthetime = "0",
                astw2_camera_aimmode = "1",
                astw2_camera_passivemode = "1",
                astw2_hud_r = "255",
                astw2_hud_g = "255",
                astw2_hud_b = "255",
                astw2_hud_d_r = "255",
                astw2_hud_d_g = "0",
                astw2_hud_d_b = "0",
                astw2_crosshair_nocircle = "0",
                astw2_crosshair_r = "255",
                astw2_crosshair_g = "255",
                astw2_crosshair_b = "255",
                astw2_crosshair_aim_r = "255",
                astw2_crosshair_aim_g = "0",
                astw2_crosshair_aim_b = "0",
                astw2_crosshair_image = "crosshairs/dot.png"
               }

            panel:AddControl("ComboBox", {
                MenuButton = 1,
                Folder = "ASTW2Client",
                Options = {[ "#preset.default" ] = ConVarsDefault },
                CVars = table.GetKeys(ConVarsDefault)
            })

            panel:AddControl("Header", {
                Description = "ASTW2 Client Options\nCreated by Arctic\nContact: https://steamcommunity.com/id/ArcticWinterZzZ/",
            })

            panel:AddControl("toggle", {
                label = "Enable Camera (Highly Recommended!)",
                command = "astw2_camera_enabled"
            })

            panel:AddControl("toggle", {
                label = "Enable 3D HUD",
                command = "astw2_hud_enabled"
            })

            panel:AddControl("toggle", {
                label = "Enable Crosshair (Highly Recommended!)",
                command = "astw2_crosshair_enable"
            })

            panel:AddControl("toggle", {
                label = "Static HUD",
                command = "astw2_hud_static"
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Shell Life Time",
                command = "astw2_shelltime",
                min = 0,
                max = 120,
            })

            panel:AddControl("Header", {
                Description = "0: Disabled\n1: Low\n2: Medium\n3:Full\n",
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Effect Quality",
                command = "astw2_quality",
                min = 0,
                max = 3,
            })

            panel:AddControl("toggle", {
                label = "True Scopes",
                command = "astw2_camera_truescopes"
            })

            panel:AddControl("toggle", {
                label = "Anti-Clip",
                command = "astw2_camera_anticlip"
            })

            panel:AddControl("toggle", {
                label = "Aim Blur effects",
                command = "astw2_blur"
            })

            panel:AddControl("toggle", {
                label = "ASTW2 Camera all the time? (Not Recommended)",
                command = "astw2_allthetime"
            })

            panel:AddControl("toggle", {
                label = "ASTW2 HUD all the time? (Highly recommended!)",
                command = "astw2_hudallthetime"
            })

            panel:AddControl("toggle", {
                label = "Relative Motion",
                command = "astw2_camera_relativemotion"
            })

            panel:AddControl("Header", {
                Description = "Active Camera Options\n0: Immersive\n1: Over-The-Shoulder\n2: GunCam\n3: GunCam Alternate\n4: Far\n-1: Create-A-Cam",
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Aim Camera Type",
                command = "astw2_camera_aimmode",
                min = -1,
                max = 4,
            })

            panel:AddControl("Header", {
                Description = "Passive Camera Options\n0: Immersive\n1: Over-The-Shoulder\n2: Far\n3: Top-Down\n-1: Create-A-Cam",
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Passive Camera Type",
                command = "astw2_camera_passivemode",
                min = -1,
                max = 3,
            })

            panel:MatSelect( "astw2_crosshair_image", list.Get( "astw2_crosshairs" ), true, 0.25, 0.25 )

            panel:AddControl("toggle", {
                label = "Disable Crosshair Override",
                command = "astw2_crosshair_nocircle"
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Crosshair Size",
                command = "astw2_crosshair_size",
                min = 1,
                max = 100,
            })

            panel:AddControl("color", {
                label = "Crosshair Color",
                red = "astw2_crosshair_r",
                green = "astw2_crosshair_g",
                blue = "astw2_crosshair_b",
            })

            panel:AddControl("color", {
                label = "Crosshair Highlighted Color",
                red = "astw2_crosshair_aim_r",
                green = "astw2_crosshair_aim_g",
                blue = "astw2_crosshair_aim_b",
            })

            panel:AddControl("color", {
                label = "HUD Color",
                red = "astw2_hud_r",
                green = "astw2_hud_g",
                blue = "astw2_hud_b",
            })

            panel:AddControl("color", {
                label = "HUD Danger Color",
                red = "astw2_hud_d_r",
                green = "astw2_hud_d_g",
                blue = "astw2_hud_d_b",
            })

       end)

       spawnmenu.AddToolMenuOption("Options", "ASTW2", "aswt2_options_customcam", "Custom Cam", "", "", function(panel)

            local ConVarsDefault = {
                astw2_cc_attachment = "0",
                astw2_cc_up = "0",
                astw2_cc_right = "0",
                astw2_cc_forward = "0",
                astw2_cc_lerp = "1",
                astw2_cc_drawplayer = "1",
                astw2_cc_shrinkhead = "1",
                astw2_cc_speedcomp = "0.5",
                astw2_ccp_attachment = "0",
                astw2_ccp_up = "0",
                astw2_ccp_right = "0",
                astw2_ccp_forward = "0",
                astw2_ccp_lerp = "1",
                astw2_ccp_drawplayer = "1",
                astw2_ccp_shrinkhead = "1",
                astw2_ccp_speedcomp = "0.5",
               }

            panel:AddControl("ComboBox", {
                MenuButton = 1,
                Folder = "ASTW2Cameras",
                Options = {[ "#preset.default" ] = ConVarsDefault },
                CVars = table.GetKeys(ConVarsDefault)
            })

            panel:AddControl("Header", {
                Description = "Create-a-Camera! Make sure to set your camera mode to -1 to enable this mode!",
            })

            panel:AddControl("Header", {
                Description = "AIM MODE:",
            })

            panel:AddControl("Header", {
                Description = "0: Head/Eyes\n1: Hand",
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Attachment Point",
                command = "astw2_cc_attachment",
                min = 0,
                max = 1,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Up",
                command = "astw2_cc_up",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Right",
                command = "astw2_cc_right",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Forward",
                command = "astw2_cc_forward",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Movement Speed",
                command = "astw2_cc_lerp",
                min = 0.01,
                max = 0.99,
            })

            panel:AddControl("toggle", {
                label = "Enable Speed Compensation",
                command = "astw2_cc_speedcomp"
            })

            panel:AddControl("toggle", {
                label = "Shrink Head",
                command = "astw2_cc_shrinkhead"
            })

            panel:AddControl("toggle", {
                label = "Enable Draw Player",
                command = "astw2_cc_drawplayer"
            })

            panel:AddControl("Header", {
                Description = "PASSIVE MODE:",
            })

            panel:AddControl("Header", {
                Description = "0: Head/Eyes\n1: Hand",
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Attachment Point",
                command = "astw2_ccp_attachment",
                min = 0,
                max = 1,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Up",
                command = "astw2_ccp_up",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Right",
                command = "astw2_ccp_right",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Forward",
                command = "astw2_ccp_forward",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Movement Speed",
                command = "astw2_ccp_lerp",
                min = 0.01,
                max = 0.99,
            })

            panel:AddControl("toggle", {
                label = "Shrink Head",
                command = "astw2_ccp_shrinkhead"
            })

            panel:AddControl("toggle", {
                label = "Enable Speed Compensation",
                command = "astw2_ccp_speedcomp"
            })

            panel:AddControl("toggle", {
                label = "Enable Draw Player",
                command = "astw2_ccp_drawplayer"
            })

       end)

       spawnmenu.AddToolMenuOption("Options", "ASTW2", "aswt2_options_customcam_f", "Forced Custom Cam", "", "", function(panel)

            local ConVarsDefault = {
                astw2_cc_attachment_f = "0",
                astw2_cc_up_f = "0",
                astw2_cc_right_f = "0",
                astw2_cc_forward_f = "0",
                astw2_cc_lerp_f = "1",
                astw2_cc_drawplayer_f = "1",
                astw2_cc_shrinkhead_f = "1",
                astw2_cc_speedcomp_f = "0.5",
                astw2_ccp_attachment_f = "0",
                astw2_ccp_up_f = "0",
                astw2_ccp_right_f = "0",
                astw2_ccp_forward_f = "0",
                astw2_ccp_lerp_f = "1",
                astw2_ccp_drawplayer_f = "1",
                astw2_ccp_shrinkhead_f = "1",
                astw2_ccp_speedcomp_f = "0.5",
               }

            panel:AddControl("ComboBox", {
                MenuButton = 1,
                Folder = "ASTW2Cameras_F",
                Options = {[ "#preset.default" ] = ConVarsDefault },
                CVars = table.GetKeys(ConVarsDefault)
            })

            panel:AddControl("Header", {
                Description = "Create-a-Camera! Make sure to set your server forced camera mode to -1 to enable this mode!",
            })

            panel:AddControl("Header", {
                Description = "AIM MODE:",
            })

            panel:AddControl("Header", {
                Description = "0: Head/Eyes\n1: Hand",
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Attachment Point",
                command = "astw2_cc_attachment_f",
                min = 0,
                max = 1,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Up",
                command = "astw2_cc_up_f",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Right",
                command = "astw2_cc_right_f",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Forward",
                command = "astw2_cc_forward_f",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Movement Speed",
                command = "astw2_cc_lerp_f",
                min = 0.01,
                max = 0.99,
            })

            panel:AddControl("toggle", {
                label = "Enable Speed Compensation",
                command = "astw2_cc_speedcomp_f"
            })

            panel:AddControl("toggle", {
                label = "Shrink Head",
                command = "astw2_cc_shrinkhead_f"
            })

            panel:AddControl("toggle", {
                label = "Enable Draw Player",
                command = "astw2_cc_drawplayer_f"
            })

            panel:AddControl("Header", {
                Description = "PASSIVE MODE:",
            })

            panel:AddControl("Header", {
                Description = "0: Head/Eyes\n1: Hand",
            })

            panel:AddControl("slider", {
                type = "int",
                label = "Attachment Point",
                command = "astw2_ccp_attachment_f",
                min = 0,
                max = 1,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Up",
                command = "astw2_ccp_up_f",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Right",
                command = "astw2_ccp_right_f",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Forward",
                command = "astw2_ccp_forward_f",
                min = -512,
                max = 512,
            })

            panel:AddControl("slider", {
                type = "float",
                label = "Camera Movement Speed",
                command = "astw2_ccp_lerp_f",
                min = 0.01,
                max = 0.99,
            })

            panel:AddControl("toggle", {
                label = "Shrink Head",
                command = "astw2_ccp_shrinkhead_f"
            })

            panel:AddControl("toggle", {
                label = "Enable Speed Compensation",
                command = "astw2_ccp_speedcomp_f"
            })

            panel:AddControl("toggle", {
                label = "Enable Draw Player",
                command = "astw2_ccp_drawplayer_f"
            })

       end)

       spawnmenu.AddToolMenuOption("Options", "ASTW2", "aswt2_options_client", "Client", "", "", function(panel)
            panel:AddControl("Header", {
                Description = "Create-a-Camera! Make sure to set your camera mode to -1 to enable this mode!",
            })
       end)
    end)