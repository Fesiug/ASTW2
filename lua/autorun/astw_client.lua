AddCSLuaFile()

if CLIENT then

last_pos = Vector(0, 0, 0)
last_vorigin = Vector(0, 0, 0)
last_vtime = 0
fixhead = false

ASTW2_RelativeCamAngles = Angle(0, 0, 0)
ASTW2_RelativePlayerAngles = Angle(0, 0, 0)

local function ASTW2Anticlipping( ply, shrinkhead, shrinkbody )
    local head_bone = ply:LookupBone("ValveBiped.Bip01_Head1")
    local head_child_bone = ply:GetChildBones( head_bone )
    local Vec001, Vec1 = Vector(0.001, 0.001, 0.001), Vector(1, 1, 1)

    if head_bone != 0 then

    if shrinkhead and GetConVar("astw2_camera_anticlip"):GetBool() and !disableanticlip then
        ply:ManipulateBoneScale(head_bone, Vec001)
        if head_child_bone != nil then
            for k, v in pairs( head_child_bone ) do
                ply:ManipulateBoneScale(v, Vec001)
            end
        end
    else
        ply:ManipulateBoneScale(head_bone, Vec1)
        if head_child_bone != nil then
            for k, v in pairs( head_child_bone ) do
                ply:ManipulateBoneScale(v, Vec1)
            end
        end
    end

    end

    local neck_bone = ply:LookupBone("ValveBiped.Bip01_Neck1")
    local spine4_bone = ply:LookupBone("ValveBiped.Bip01_Spine4")
    local spine1_bone = ply:LookupBone("ValveBiped.Bip01_Spine1")
    local spine2_bone = ply:LookupBone("ValveBiped.Bip01_Spine2")
    local spine_bone = ply:LookupBone("ValveBiped.Bip01_Spine")

    if neck_bone != 0 and spine_bone != 0 then

        if shrinkbody and GetConVar("astw2_camera_anticlip"):GetBool() and !disableanticlip then
            ply:ManipulateBoneScale(spine_bone, Vec001)
            ply:ManipulateBoneScale(spine1_bone, Vec001)
            ply:ManipulateBoneScale(spine2_bone, Vec001)
            ply:ManipulateBoneScale(spine4_bone, Vec001)
            ply:ManipulateBoneScale(neck_bone, Vec001)
        else
            ply:ManipulateBoneScale(spine_bone, Vec1)
            ply:ManipulateBoneScale(spine1_bone, Vec1)
            ply:ManipulateBoneScale(spine2_bone, Vec1)
            ply:ManipulateBoneScale(spine4_bone, Vec1)
            ply:ManipulateBoneScale(neck_bone, Vec1)
        end

    end
end

ASTW2_TurningSpeed = 360
ASTW2_CamPitch = 85

function ASTW2_InputMouseApply( cmd, x, y, ang )
    if !GetConVar("ASTW2_camera_enabled"):GetBool() then return end

    local ply = LocalPlayer()
    local wpn = ply:GetActiveWeapon()
    local turnspeed = ASTW2_TurningSpeed

    if !wpn.ThirdPersonWeapon or !GetConVar("astw2_camera_relativemotion"):GetBool() then
        ASTW2_RelativeCamAngles = EyeAngles()
        ASTW2_RelativePlayerAngles = EyeAngles()
        return
    end

    local relative = true

    local mult = 1

    if ply:GetActiveWeapon():GetNWBool("insights") or thirdparty then
        relative = false
        turnspeed = math.huge
        mult = 1 / wpn.Magnification
    end

    local targetplayerangles = ASTW2_RelativePlayerAngles

    if !relative then
        targetplayerangles = ASTW2_RelativeCamAngles
    else
        local movevec = Vector(cmd:GetForwardMove(), cmd:GetSideMove(), cmd:GetUpMove())

        if movevec:Length() > 0 then
            targetplayerangles = ASTW2_RelativeCamAngles - movevec:Angle()

            cmd:SetForwardMove(movevec:Length())
            cmd:SetSideMove(0)
            cmd:SetUpMove(0)
        end
    end

    if ply:InVehicle() then
        targetplayerangles = targetplayerangles - ply:GetVehicle():GetAngles()
    end

    ASTW2_RelativePlayerAngles = targetplayerangles

    local c_angles = cmd:GetViewAngles()

    if ply:InVehicle() then
        c_angles = c_angles
    end

    if GetConVar("act3_sensitivity") then
        mult = mult * GetConVar("act3_sensitivity"):GetFloat()
    end

    local deltax = x * 25 * mult * GetConVar("sensitivity"):GetFloat() / ScrW()
    local deltay = y * 25 * mult * GetConVar("sensitivity"):GetFloat() / ScrH()

    if GetConVar("m_yaw"):GetFloat() < 0 then
        deltax = deltax * -1
    end

    if GetConVar("m_pitch"):GetFloat() < 0 then
        deltay = deltay * -1
    end

    ASTW2_RelativeCamAngles.p = math.Clamp(ASTW2_RelativeCamAngles.p + deltay, -ASTW2_CamPitch, ASTW2_CamPitch)

    ASTW2_RelativeCamAngles.y = ASTW2_RelativeCamAngles.y - deltax

    ASTW2_RelativeCamAngles.r = 0

    c_angles[1] = math.ApproachAngle(c_angles[1], targetplayerangles[1], FrameTime() * turnspeed)
    c_angles[2] = math.ApproachAngle(c_angles[2], targetplayerangles[2], FrameTime() * turnspeed)
    c_angles[3] = math.ApproachAngle(c_angles[3], targetplayerangles[3], FrameTime() * turnspeed)

    cmd:SetViewAngles(c_angles)

    return true
end

hook.Add( "InputMouseApply", "ASTW2_InputMouseApply", ASTW2_InputMouseApply )

local function ASTW2CalcView( ply, pos, angles, fov )
    if !(GetConVar("astw2_camera_enabled"):GetBool() or GetConVar("astw2_force_camera"):GetBool()) or !ply:Alive() or (!ply:GetActiveWeapon().ThirdPersonWeapon and !(GetConVar("astw2_allthetime"):GetBool() or GetConVar("astw2_force_alwayson"):GetBool())) or ply:InVehicle() then
        if fixhead then
            ASTW2Anticlipping( ply, false, false )
            fixhead = false
        end
        last_vorigin = pos
        return
    end
    local view = {}

    local cam_aimmode = GetConVar("astw2_camera_aimmode"):GetInt()
    local cam_passivemode = GetConVar("astw2_camera_passivemode"):GetInt()

    if GetConVar("astw2_force_camera"):GetBool() then
        cam_aimmode = GetConVar("astw2_forced_aimmode"):GetInt()
        cam_passivemode = GetConVar("astw2_forced_passivemode"):GetInt()
    end

    if last_vtime < (CurTime() - 5) then
        last_vorigin = pos
        last_pos = pos
    end

    last_vtime = CurTime()

    local thirdparty = false
    local shrinkhead = false
    local shrinkbody = false
    local disableanticlip = false
    local vel_comp = false
    local vorigin = pos
    fixhead = true

    if ply:ShouldDrawLocalPlayer() then
        disableanticlip = true
    end

    local tracestart = pos
    local traceend = nil
    local eyes = ply:LookupAttachment( "eyes" )

    local eyepos = pos
    local eyeang = ang

    if eyes != 0 then
        eyepos = ply:GetAttachment( eyes ).Pos
        eyeang = ply:GetAttachment( eyes ).Ang
    end

    local hand = ply:LookupAttachment( "Anim_Attachment_RH" )
    local handpos = pos
    local handang = ang

    local focus = false

    if !ply:GetActiveWeapon().ThirdPersonWeapon then
        thirdparty = true
    end

    if hand != 0 then
        handpos = ply:GetAttachment( hand ).Pos
        handang = ply:GetAttachment( hand ).Ang
    else
        // Alright, revert to backup
        hand = ply:LookupBone("ValveBiped.Bip01_R_Hand")
        if hand != 0 then
            handpos, handang = ply:GetBonePosition(hand)
            handang = handang - Angle(0, 0, 180)
        end
    end

    local lerpstart = 0.5
    local lerpend = 0.5

    if ply:GetActiveWeapon():GetNWBool("insights") or thirdparty then
        if GetConVar("astw2_camera_truescopes"):GetBool() and ply:GetActiveWeapon().TrueScope then
            traceend = ply:GetActiveWeapon():GetShootPosASTW() or pos
            lerpstart = 1
            lerpend = 0.1
        else
            if cam_aimmode == 0 then
                // Immersive
                traceend = eyepos + (eyeang:Forward() * 2) + (eyeang:Up() * 2)
                view.znear = 1
                view.drawviewer = true
                vel_comp = true
                lerpstart = 0.1
                lerpend = 0.25
            elseif cam_aimmode == 1 then
                // OTS

                local angles = ply:EyeAngles()
                traceend = eyepos + (angles:Up() * -8) + (angles:Right() * 32 * GetConVar("astw2_camera_shoulder"):GetInt()) + (angles:Forward() * -64)
                view.znear = 1
                view.drawviewer = true
                lerpstart = 0.15
                lerpend = 0.15
            elseif cam_aimmode == 2 then
                // Guncam
                traceend = handpos + (ply:EyeAngles():Up() * 2) +  (handang:Up() * 6) + (handang:Right() * 1) + (handang:Forward() * -7)
                view.znear = 1
                view.drawviewer = true
                shrinkhead = true
                vel_comp = true
                lerpstart = 0.1
                lerpend = 0.25
                if !ply:GetActiveWeapon().ProjectileIsGrenade then
                    shrinkbody = true
                end
            elseif cam_aimmode == 3 then
                // FP Recreation cam
                traceend = handpos + (ply:EyeAngles():Up() * 2) +  (handang:Up() * 5) + (handang:Right() * -4) + (handang:Forward() * -7)
                view.znear = 1
                view.drawviewer = true
                shrinkhead = true
                vel_comp = true
                lerpstart = 0.1
                lerpend = 0.25
                if !ply:GetActiveWeapon().ProjectileIsGrenade then
                    shrinkbody = true
                end
            elseif cam_aimmode == 4 then
                // Far
                traceend = eyepos + (ply:EyeAngles():Up() * -16) + (ply:EyeAngles():Right() * 32 * GetConVar("astw2_camera_shoulder"):GetInt()) + (ply:EyeAngles():Forward() * -128)
                view.znear = 1
                view.drawviewer = true
                lerpstart = 0.15
                lerpend = 0.15
            elseif cam_aimmode == -1 then
                // Custom cam
                local tpos = eyepos
                local att = GetConVar("astw2_cc_attachment"):GetInt()
                local up = GetConVar("astw2_cc_up"):GetFloat()
                local right = GetConVar("astw2_cc_right"):GetFloat()
                local forward = GetConVar("astw2_cc_forward"):GetFloat()
                local drawviewer = GetConVar("astw2_cc_drawplayer"):GetBool()
                lerpstart = GetConVar("astw2_cc_lerp"):GetFloat()
                lerpend = GetConVar("astw2_cc_lerp"):GetFloat()
                shrinkhead = GetConVar("astw2_cc_shrinkhead"):GetBool()

                if GetConVar("astw2_force_camera"):GetBool() then
                    att = GetConVar("astw2_cc_attachment_f"):GetInt()
                    up = GetConVar("astw2_cc_up_f"):GetFloat()
                    right = GetConVar("astw2_cc_right_f"):GetFloat()
                    forward = GetConVar("astw2_cc_forward_f"):GetFloat()
                    drawviewer = GetConVar("astw2_cc_drawplayer_f"):GetBool()
                    lerpstart = GetConVar("astw2_cc_lerp_f"):GetFloat()
                    lerpend = GetConVar("astw2_cc_lerp_f"):GetFloat()
                    shrinkhead = GetConVar("astw2_cc_shrinkhead_f"):GetBool()
                end
                if att == 1 then
                    tpos = handpos
                end
                traceend = tpos + (ply:EyeAngles():Up() * up) + (ply:EyeAngles():Right() * right * GetConVar("astw2_camera_shoulder"):GetInt()) + (ply:EyeAngles():Forward() * forward)
                view.znear = 1
                view.drawviewer = drawviewer
            end
        end
    else
        if cam_passivemode == 0 then
            // Immersive
            traceend = eyepos + (eyeang:Forward() * 2) + (eyeang:Up() * 2)
            view.znear = 1
            view.drawviewer = true
            vel_comp = true
            lerpstart = 0.25
            lerpend = 0.25
        elseif cam_passivemode == 1 then
            // OTS

            local angles = ply:EyeAngles()
            if GetConVar("astw2_camera_relativemotion"):GetBool() then
                angles = ASTW2_RelativeCamAngles
                view.angles = ASTW2_RelativeCamAngles
            end

            traceend = eyepos + (angles:Up() * -8) + (angles:Right() * 32 * GetConVar("astw2_camera_shoulder"):GetInt()) + (angles:Forward() * -64)
            view.znear = 1
            view.drawviewer = true
            lerpstart = 0.15
            lerpend = 0.15
        elseif cam_passivemode == 2 then
            // Far

            local angles = ply:EyeAngles()
            if GetConVar("astw2_camera_relativemotion"):GetBool() then
                angles = ASTW2_RelativeCamAngles
                view.angles = ASTW2_RelativeCamAngles
            end

            traceend = eyepos + (angles:Up() * -16) + (angles:Right() * 32 * GetConVar("astw2_camera_shoulder"):GetInt()) + (angles:Forward() * -128)
            view.znear = 1
            view.drawviewer = true
            lerpstart = 0.15
            lerpend = 0.15
        elseif cam_passivemode == 3 then
            // Top-Down
            traceend = eyepos + Vector(0, 0, 256)
            local plyeyeangles = ply:EyeAngles()
            plyeyeangles.x = 0
            ply:SetEyeAngles(plyeyeangles)
            view.angles = Angle(90, 0, 0)
            view.znear = 1
            view.drawviewer = true
            lerpstart = 0.15
            lerpend = 0.15
        elseif cam_passivemode == -1 then
            // Custom cam
                local tpos = eyepos
                local att = GetConVar("astw2_ccp_attachment"):GetInt()
                local up = GetConVar("astw2_ccp_up"):GetFloat()
                local right = GetConVar("astw2_ccp_right"):GetFloat()
                local forward = GetConVar("astw2_ccp_forward"):GetFloat()
                local drawviewer = GetConVar("astw2_ccp_drawplayer"):GetBool()
                lerpstart = GetConVar("astw2_ccp_lerp"):GetFloat()
                lerpend = GetConVar("astw2_ccp_lerp"):GetFloat()
                shrinkhead = GetConVar("astw2_ccp_shrinkhead"):GetBool()

                if GetConVar("astw2_force_camera"):GetBool() then
                    att = GetConVar("astw2_ccp_attachment_f"):GetInt()
                    up = GetConVar("astw2_ccp_up_f"):GetFloat()
                    right = GetConVar("astw2_ccp_right_f"):GetFloat()
                    forward = GetConVar("astw2_ccp_forward_f"):GetFloat()
                    drawviewer = GetConVar("astw2_ccp_drawplayer_f"):GetBool()
                    lerpstart = GetConVar("astw2_ccp_lerp_f"):GetFloat()
                    lerpend = GetConVar("astw2_ccp_lerp_f"):GetFloat()
                    shrinkhead = GetConVar("astw2_ccp_shrinkhead_f"):GetBool()
                end
                if att == 1 then
                    tpos = handpos
                end
                local angles = ply:EyeAngles()
				if GetConVar("astw2_camera_relativemotion"):GetBool() then
					angles = ASTW2_RelativeCamAngles
					view.angles = ASTW2_RelativeCamAngles
				end
                traceend = tpos + (angles:Up() * up) + (angles:Right() * right * GetConVar("astw2_camera_shoulder"):GetInt()) + (angles:Forward() * forward)
                view.znear = 1
                view.drawviewer = drawviewer
        end
    end

    last_traceend = traceend
    local tr = util.TraceLine({
        start = tracestart,
        endpos = traceend,
        filter = ply,
    })
    vorigin = tr.HitPos
    if tr.Hit then
        vorigin = tr.HitPos + (tr.HitNormal * 4)
    end

    if !shrinkhead and fix_head then
        shrinkhead = false
        fix_head = false
    end

    if disableanticlip then
        shrinkhead = false
        shrinkbody = false
    end

    ASTW2Anticlipping( ply, shrinkhead, shrinkbody )

    if vel_comp then
        local diff = pos - last_pos

        last_vorigin = last_vorigin + diff
    end

    if focus then
        local drv = pos - vorigin
        drv = drv:Angle()
        view.angles = drv
    end

    local delta = 1

    if LocalPlayer():GetActiveWeapon().ThirdPersonWeapon and LocalPlayer():GetActiveWeapon().LastRaiseTime then
        delta = CurTime() - LocalPlayer():GetActiveWeapon().LastRaiseTime
        delta = delta / LocalPlayer():GetActiveWeapon().DeployTime
    end

    local lerp = Lerp(delta, lerpstart, lerpend)

    vorigin = LerpVector( lerp, last_vorigin, vorigin )
    last_vorigin = vorigin
    last_pos = pos
    view.origin = vorigin

    return view
end

surface.CreateFont("astw2_hud16", {
    font = "Trebuchet MS", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    extended = false,
    size = ScreenScale(32),
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

surface.CreateFont("astw2_hud8", {
    font = "Trebuchet MS", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    extended = false,
    size = ScreenScale(16),
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

surface.CreateFont("astw2_hud4_mono", {
    font = "Consolas", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    extended = false,
    size = ScreenScale(8),
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

surface.CreateFont("astw2_hud16_dark", {
    font = "Trebuchet MS", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    extended = false,
    size = ScreenScale(32),
    weight = 500,
    blursize = 8,
    scanlines = 4,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

surface.CreateFont("astw2_hud8_dark", {
    font = "Trebuchet MS", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    extended = false,
    size = ScreenScale(16),
    weight = 500,
    blursize = 8,
    scanlines = 4,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

surface.CreateFont("astw2_hud4_mono_dark", {
    font = "Consolas", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    extended = false,
    size = ScreenScale(8),
    weight = 500,
    blursize = 8,
    scanlines = 4,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})

hook.Add( "CalcView", "ASTW2CalcView", ASTW2CalcView )

last_textpos = {x = 0, y = 0}

local function ASTW23DHUD()
    if !GetConVar( "astw2_hud_enabled" ):GetBool() then return end
    if CurTime() < 5 then return end
    local ply = LocalPlayer()
    if !ply:IsValid() then return end
    local weapon = ply:GetActiveWeapon()
    if !weapon:IsValid() then return end
    if !ply:GetActiveWeapon().ThirdPersonWeapon and !(GetConVar("astw2_allthetime"):GetBool() or GetConVar("astw2_force_alwayson"):GetBool() or GetConVar("astw2_hudallthetime"):GetBool()) then return end
    local backup_pos = {x = ScrW() * 0.025, y = ScrH() - (ScrW() * 0.07) - ScreenScale(48)}
    local scope_pos = {x = ScrW() * 0.45, y = ScrH() * 0.66}
    local hand = ply:LookupBone("ValveBiped.Bip01_R_Hand")
    local handpos, handang = ply:GetBonePosition(hand)
    handang = handang - Angle(0, 0, 180)
    local infoboxoffset = Vector(24, 8, 0)
    if weapon.ThirdPersonWeapon then
        infoboxoffset = weapon.InfoboxOffset
    end
    handpos = handpos + (handang:Forward() * infoboxoffset.x) + (handang:Right() * infoboxoffset.y) + (handang:Up() * infoboxoffset.z)
    handpos = handpos:ToScreen()

    local insights = false

    if !ply:GetActiveWeapon().ThirdPersonWeapon or ply:GetActiveWeapon():GetNWBool("insights") then
        insights = true
    end

    local spine = ply:LookupBone("ValveBiped.Bip01_Spine")
    local spinepos = ply:GetBonePosition(spine)
    spinepos = spinepos:ToScreen()

    local x = handpos.x
    local y = handpos.y

    if !insights then
        x = backup_pos.x
        y = backup_pos.y
    end

    local invisible =  spinepos.x > ScrW() or  spinepos.x < 0 or  spinepos.y > ScrH() or  spinepos.y < 0

    if !invisible and !insights then
        x = spinepos.x
        y = spinepos.y
    end

    if GetConVar("astw2_hud_static"):GetBool() or (!weapon.ThirdPersonWeapon and (!GetConVar("astw2_allthetime"):GetBool() and GetConVar("astw2_hudallthetime"):GetBool())) then
        x = backup_pos.x
        y = backup_pos.y
    end

    if (insights and GetConVar("astw2_camera_truescopes"):GetBool() and ply:GetActiveWeapon().TrueScope) then
        x = scope_pos.x
        y = scope_pos.y
    end

    local airgap = ScrW() * 0.025

    if x > ScrW() - airgap then
        x = ScrW() - airgap
    elseif x < airgap then
        x = airgap
    end

    if y > ScrH() - airgap - ScreenScale(48) then
        y = ScrH() - airgap - ScreenScale(48)
    elseif y < airgap then
        y = airgap
    end

    x = Lerp(0.85, x, last_textpos.x)
    y = Lerp(0.85, y, last_textpos.y)

    last_textpos = {x = x, y = y}

    local ammo = ply:GetAmmoCount( weapon:GetPrimaryAmmoType() )
    if GetConVar( "astw2_infammo" ):GetBool() and weapon.ThirdPersonWeapon or weapon.Melee or weapon.InfAmmo then
        ammo = "INF"
    end

    if weapon.ThirdPersonWeapon and weapon:GetAmmoDisplay() then
        ammo = weapon:GetAmmoDisplay()
    end

    local nametext = weapon:GetPrintName()

    if weapon:GetPrintName()[1] == "#" then
        nametext = language.GetPhrase( weapon:GetPrintName() )
    end

    if !weapon.Melee then
        if weapon:GetPrimaryAmmoType() != -1 then
            nametext = nametext .. " | " .. language.GetPhrase(game.GetAmmoName(weapon:GetPrimaryAmmoType()) .. "_ammo")
        end
    else
        nametext = nametext .. " | " .. "Melee"
    end

    if weapon.ProjectileIsGrenade then
        nametext = weapon:GetPrintName()
    end

    local ammotext = ammo

    if weapon:GetMaxClip1() > 0 then
        ammotext = weapon:Clip1() .. "/" .. ammo
    end

    local ammoindanger = false
    if (weapon:GetMaxClip1() > 0 or !GetConVar( "astw2_infammo" ):GetBool()) and (weapon:Clip1() <= (weapon:GetMaxClip1() * 0.25)) and (weapon:GetMaxClip1() != -1 or weapon:Ammo1() < 1) and !(weapon.Melee or weapon.InfAmmo) then
        ammoindanger = true
    end

    local hptext = "+ " .. ply:Health()
    if ply:Armor() > 0 then
        hptext = hptext .. " | A " .. ply:Armor()
    end

    local ammobar = ""

    ammobar = ammobar .. "["

    for i=1,math.Clamp( weapon:GetMaxClip1(), 1, 50 ) do
        if weapon:Clip1() >= i then
            local atype = "|"
            if weapon:GetMaxClip1() >= 50 then
                if (i - weapon:Clip1()) % 10 == 0 then
                    atype = "!"
                else
                    atype = "|"
                end
            end

            ammobar = ammobar .. atype
        else
            ammobar = ammobar .. " "
        end
    end
    ammobar = ammobar .. "]"

    if weapon:Clip1() > weapon:GetMaxClip1() then
        ammobar = ammobar .. "+" .. (weapon:Clip1() - weapon:GetMaxClip1()) .. " "
    else
        ammobar = ammobar .. "   "
    end

    if weapon.Melee or weapon.ProjectileIsGrenade or weapon:GetMaxClip1() == -1 then
        ammobar = ""
    end

    local firemode = ""

    if !weapon:IsScripted() then
        firemode = "[????] "
    else
        if weapon.Primary.Automatic then
            firemode = "[AUTO] "
        else
            firemode = "[SEMI] "
        end
    end

    if weapon.ThirdPersonWeapon then
        if weapon.BurstLength > 1 then
            firemode = "[" .. weapon.BurstLength .. "BST] "
        end

        if weapon.UniqueFiremode != "" then
            firemode = "[" .. weapon:GetUniqueFiremode() .. "] "
        end

        if weapon.Melee then
            firemode = ""
        end

        if weapon.ProjectileIsGrenade then
            firemode = "[NADE]"
        end

        ammobar = ammobar .. firemode

        if weapon.CanRest and weapon:ASTWIsRested() then
            if weapon.Bipod then
                ammobar = ammobar .. "[BPOD] "
            else
                ammobar = ammobar .. "[REST] "
            end
        end

        if weapon.Melee then
            if weapon.Melee_DamageType == DMG_SLASH then
                ammobar = ammobar .. "[SHARP] "
            elseif weapon.Melee_DamageType == DMG_CLUB then
                ammobar = ammobar .. "[BLUNT] "
            elseif weapon.Melee_DamageType == DMG_SHOCK then
                ammobar = ammobar .. "[SHOCK] "
            end
        end

        if weapon.Tracking and weapon:GetNWBool("insights") then
            ammobar = ammobar .. "[" .. weapon.TrackMode .. "] "
        end

        if weapon.Special == "ubgl" then
            local ubglammo = weapon:UBGLAmmo()
            if GetConVar( "astw2_infammo" ):GetBool() then
                ubglammo = "INF"
            end
            ammobar = ammobar .. "[UBGL: " .. ubglammo .. "]"
        end
    end

    local hudcolor = Color(GetConVar("astw2_hud_r"):GetInt(), GetConVar("astw2_hud_g"):GetInt(), GetConVar("astw2_hud_b"):GetInt())
    local hudcolor_danger = Color(GetConVar("astw2_hud_d_r"):GetInt(), GetConVar("astw2_hud_d_g"):GetInt(), GetConVar("astw2_hud_d_b"):GetInt())

    local hpdelta = ply:Health() / ply:GetMaxHealth()
    local hpcolor = Color(Lerp(hpdelta, GetConVar("astw2_hud_d_r"):GetInt(), GetConVar("astw2_hud_r"):GetInt()), Lerp(hpdelta, GetConVar("astw2_hud_d_g"):GetInt(), GetConVar("astw2_hud_g"):GetInt()), Lerp(hpdelta, GetConVar("astw2_hud_d_b"):GetInt(), GetConVar("astw2_hud_b"):GetInt()))

    if weapon then
        local bgcol = Color(0, 0, 0, 255)

        surface.SetTextColor( bgcol )
        surface.SetFont( "astw2_hud4_mono_dark" )
        surface.SetTextPos( x, y + ScreenScale(28) )
        surface.DrawText( ammobar )

        if ammoindanger then
            surface.SetTextColor( hudcolor_danger )
        else
            surface.SetTextColor( hudcolor )
        end
        surface.SetFont( "astw2_hud4_mono" )
        surface.SetTextPos( x, y + ScreenScale(28) )
        surface.DrawText( ammobar )

        surface.SetTextColor( bgcol )
        surface.SetTextPos( x, y )
        surface.SetFont( "astw2_hud16_dark" )
        surface.DrawText( ammotext )

        surface.SetTextColor( hudcolor )
        surface.SetTextPos( x, y )
        surface.SetFont( "astw2_hud16" )
        surface.DrawText( ammotext )

        surface.SetFont( "astw2_hud16_dark" )
        surface.SetTextColor( bgcol )
        surface.SetTextPos( ScreenScale(24), ScrH() - ScreenScale(48) )
        surface.DrawText( hptext )
        surface.SetTextPos( ScreenScale(24), ScrH() - ScreenScale(48) )
        surface.SetFont( "astw2_hud16" )
        surface.SetTextColor( hpcolor )
        surface.DrawText( hptext )

        surface.SetTextPos( x, y-ScreenScale(12) )
        surface.SetFont( "astw2_hud8_dark" )
        surface.SetTextColor( bgcol )
        surface.DrawText( nametext )
        surface.SetTextPos( x, y-ScreenScale(12) )
        surface.SetFont( "astw2_hud8" )
        surface.SetTextColor( hudcolor )
        surface.DrawText( nametext )
    end

end

hook.Add( "HUDPaint", "ASTW23DHUD", ASTW23DHUD )

local hide = {
    ["CHudHealth"] = true,
    ["CHudBattery"] = true,
    ["CHudAmmo"] = true,
}

hook.Add( "HUDShouldDraw", "ASTW2HideHUD", function( name )
    if hide[name] and GetConVar("astw2_hud_enabled"):GetBool() and LocalPlayer():IsValid() and (LocalPlayer():GetActiveWeapon().ThirdPersonWeapon or (GetConVar("astw2_allthetime"):GetBool() or GetConVar("astw2_force_alwayson"):GetBool() or GetConVar("astw2_hudallthetime"):GetBool()) ) then return false end
end )

end