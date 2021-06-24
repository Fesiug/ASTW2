include( "shared.lua" )

SWEP.last_aimvector = Vector(0, 0, 0)

local mat_color = Material( "pp/colour" )
local mat_noise = Material( "hud/nvg_noise" )

local ss = ScreenScale(1)

lastcrossimage = ""
lastcrossmat = nil

function SWEP:OnDrawHUD()
end

function SWEP:DrawHUD()

    if self:GetNWBool( "insights" ) or self.Special == "ubgl" or GetConVar("astw2_hipfire_crosshair"):GetBool() then

        if self.HasVisibleLaser and !(GetConVar("astw2_hipfire_crosshair"):GetBool() and !self:GetNWBool( "insights" )) then
            local laser = self:GetHomingTrace()
            if laser.Hit then
                cam.Start3D() -- Start the 3D function so we can draw onto the screen.
                    render.SetMaterial( self.LaserTexture ) -- Tell render what material we want, in this case the flash from the gravgun
                    render.DrawSprite( laser.HitPos, math.random(40, 50), math.random(40, 50), Color(255, 255, 255) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
                cam.End3D()
            end
        end

        if self.Melee then return end

        local w = ScrW()
        local h = ScrH()

        if self.NightScope then
            local dlight = DynamicLight(self:EntIndex())
            dlight.r = 0
            dlight.g = 255
            dlight.b = 0
            dlight.minlight = 0
            dlight.style = 0
            dlight.Brightness = 0.25
            dlight.Pos = EyePos()
            dlight.Size = 2000
            dlight.Decay = 16000
            dlight.DieTime = CurTime() + 0.05

            render.UpdateScreenEffectTexture()

            mat_color:SetTexture( "$fbtexture", render.GetScreenEffectTexture() )

            mat_color:SetFloat( "$pp_colour_addr", -255 )
            mat_color:SetFloat( "$pp_colour_addg", 0 )
            mat_color:SetFloat( "$pp_colour_addb", -255 )
            mat_color:SetFloat( "$pp_colour_mulr", 0 )
            mat_color:SetFloat( "$pp_colour_mulg", 0 )
            mat_color:SetFloat( "$pp_colour_mulb", 0 )
            mat_color:SetFloat( "$pp_colour_brightness", 0.01 )
            mat_color:SetFloat( "$pp_colour_contrast", 2 )
            mat_color:SetFloat( "$pp_colour_colour", 1 )

            render.SetMaterial( mat_color )
            render.DrawScreenQuad()


            surface.SetMaterial( mat_noise )
            surface.SetDrawColor( 0, 255, 0, 100 )
            surface.DrawTexturedRect( 0 + math.Rand(-128,128), 0 + math.Rand(-128,128), w, h )

            surface.SetMaterial( mat_noise )
            surface.SetDrawColor( 0, 255, 0, 100 )
            surface.DrawTexturedRect( 0 + math.Rand(-64,64), 0 + math.Rand(-64,64), w, h )
        end

        local delta = CurTime() - self.LastRaiseTime
        delta = delta / self.DeployTime

        if GetConVar("astw2_hipfire_crosshair"):GetBool() then
            delta = 1
        end

        if GetConVar("astw2_blur"):GetBool() and !self.TrueScope then
            local height = Lerp( delta, 0, ScrH() / 4 )
            DrawToyTown(2, height)
        end

        local hit = util.TraceLine ({
            start = self:GetShootPosASTW(),
            endpos = self:GetShootPosASTW() + (LocalPlayer():EyeAngles() + self.Fire_AngleOffset):Forward() * 8196,
            filter = LocalPlayer(),
            mask = MASK_SHOT
        })

        if GetConVar("astw2_camera_truescopes"):GetBool() and self.TrueScope and !(GetConVar("astw2_hipfire_crosshair"):GetBool() and !self:GetNWBool( "insights" )) then
            local aimvector = Lerp(0.3, self.last_aimvector, LocalPlayer():GetAimVector())
            self.last_aimvector = aimvector
            local screenpos = (self:GetShootPosASTW() + aimvector * self.TrueScopeStab * 256):ToScreen()

            local x = screenpos.x
            local y = screenpos.y

            local scopesize = ScrH()
            if ScrW() < scopesize then
                scopesize = ScrW()
            end

            scopesize = math.ceil(Lerp( delta, 0, scopesize))

            local scopeposx = x - ( scopesize / 2 )
            local scopeposy = y - ( scopesize / 2 )

            if scopeposx > ScrW() or scopeposx < 0 - scopesize or scopeposy > ScrH() or scopeposy < 0 - scopesize then

                surface.SetDrawColor( 0, 0, 0 )

                surface.DrawRect( 0, 0, ScrW(), ScrH() )

            else

                surface.SetDrawColor( 0, 0, 0 )

                surface.DrawRect( scopeposx - ScrW(), scopeposy - ScrH(), 4 * ScrW(), ScrH() )
                surface.DrawRect( scopeposx - ScrW(), scopeposy + scopesize , 4 * ScrW(), ScrH() )

                surface.DrawRect( scopeposx - ScrW(), scopeposy - ScrH(), ScrW(), 4 * ScrH() )
                surface.DrawRect( scopeposx + scopesize, scopeposy - ScrH() , ScrW(), 4 * ScrH() )

                surface.SetDrawColor( 255, 255, 255 )

                surface.SetMaterial( self.TrueScopeImage )
                surface.DrawTexturedRect( scopeposx, scopeposy, scopesize, scopesize )

            end
        else
            if !GetConVar("astw2_crosshair_enable"):GetBool() or self.NoCrosshair then return end

            local screenpos = hit.HitPos:ToScreen()

            local x = screenpos.x
            local y = screenpos.y
            local size = GetConVar("astw2_crosshair_size"):GetInt() * self.CrosshairSizeOverride

            local alpha = Lerp( delta, 0, 255 )

            local image = GetConVar("astw2_crosshair_image"):GetString()

            if (self.Projectile or self.Primary.Num > 1) and (!GetConVar("astw2_crosshair_nocircle"):GetBool() and !(self:GetNWBool("insights", false) and self.Special == "ubgl")) then
                image = "crosshairs/circle.png"
            end

            if self.CrosshairOverride then
                image = self.CrosshairOverride
            end

            if image != lastcrossimage then
                lastcrossimage = image
                lastcrossmat = Material(lastcrossimage)
            end

            surface.SetMaterial( lastcrossmat )

            local r = GetConVar("astw2_crosshair_r"):GetInt()
            local g = GetConVar("astw2_crosshair_g"):GetInt()
            local b = GetConVar("astw2_crosshair_b"):GetInt()

            local a_r = GetConVar("astw2_crosshair_aim_r"):GetInt()
            local a_g = GetConVar("astw2_crosshair_aim_g"):GetInt()
            local a_b = GetConVar("astw2_crosshair_aim_b"):GetInt()

            local color = Color( r, g, b, alpha )

            if hit.Entity:IsNPC() or hit.Entity:IsPlayer() or (hit.Entity:IsValid() and scripted_ents.IsBasedOn( hit.Entity:GetClass(), "base_nextbot" )) then
                color = Color( a_r, a_g, a_b, alpha )
            end

            surface.SetDrawColor( color )

            surface.DrawTexturedRect( x - (size / 2), y - (size / 2), size, size )
			
			if self:GetNWFloat("Heat") > 0 then
				surface.SetMaterial( Material("crosshairs/dot.png") )
				size = 64
				local move1 = ss*-self:GetNWFloat("Heat")/45
				local move = move1 * 0.72
				surface.SetDrawColor( 255, 0, 0, 255 )
				
				-- top left
				surface.DrawTexturedRect( x - (size / 2) +move, y - (size / 2) +move, size, size )
				-- top right
				surface.DrawTexturedRect( x - (size / 2) -move, y - (size / 2) +move, size, size )
				-- bottom left
				surface.DrawTexturedRect( x - (size / 2) +move, y - (size / 2) -move, size, size )
				-- bottom right
				surface.DrawTexturedRect( x - (size / 2) -move, y - (size / 2) -move, size, size )
				
				
				-- top
				surface.DrawTexturedRect( x - (size / 2), y - (size / 2) +move1, size, size )
				-- right
				surface.DrawTexturedRect( x - (size / 2) -move1, y - (size / 2), size, size )
				-- bottom
				surface.DrawTexturedRect( x - (size / 2), y - (size / 2) -move1, size, size )
				-- left
				surface.DrawTexturedRect( x - (size / 2) +move1, y - (size / 2), size, size )
			end

        end

    end

    self:OnDrawHUD()

end

function SWEP:AdjustMouseSensitivity()
    if self:GetNWBool( "insights" ) then
        return 1 / self.Magnification
    else
        return 1
    end
end


SWEP.vRenderOrder = nil
function SWEP:ViewModelDrawn()
    
    local vm = self.Owner:GetViewModel()
    if !IsValid(vm) then return end
    
    if (!self.VElements) then return end
    
    self:UpdateBonePositions(vm)

    if (!self.vRenderOrder) then
        
        // we build a render order because sprites need to be drawn after models
        self.vRenderOrder = {}

        for k, v in pairs( self.VElements ) do
            if (v.type == "Model") then
                table.insert(self.vRenderOrder, 1, k)
            elseif (v.type == "Sprite" or v.type == "Quad") then
                table.insert(self.vRenderOrder, k)
            end
        end
        
    end

    for k, name in ipairs( self.vRenderOrder ) do
    
        local v = self.VElements[name]
        if (!v) then self.vRenderOrder = nil break end
        if (v.hide) then continue end
        
        local model = v.modelEnt
        local sprite = v.spriteMaterial
        
        if (!v.bone) then continue end
        
        local pos, ang = self:GetBoneOrientation( self.VElements, v, vm )
        
        if (!pos) then continue end
        
        if (v.type == "Model" and IsValid(model)) then

            model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
            ang:RotateAroundAxis(ang:Up(), v.angle.y)
            ang:RotateAroundAxis(ang:Right(), v.angle.p)
            ang:RotateAroundAxis(ang:Forward(), v.angle.r)

            model:SetAngles(ang)
            //model:SetModelScale(v.size)
            local matrix = Matrix()
            matrix:Scale(v.size)
            model:EnableMatrix( "RenderMultiply", matrix )
            
            if (v.material == "") then
                model:SetMaterial("")
            elseif (model:GetMaterial() != v.material) then
                model:SetMaterial( v.material )
            end
            
            if (v.skin and v.skin != model:GetSkin()) then
                model:SetSkin(v.skin)
            end
            
            if (v.bodygroup) then
                for k, v in pairs( v.bodygroup ) do
                    if (model:GetBodygroup(k) != v) then
                        model:SetBodygroup(k, v)
                    end
                end
            end
            
            if (v.surpresslightning) then
                render.SuppressEngineLighting(true)
            end
            
            render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
            render.SetBlend(v.color.a/255)
            model:DrawModel()
            render.SetBlend(1)
            render.SetColorModulation(1, 1, 1)
            
            if (v.surpresslightning) then
                render.SuppressEngineLighting(false)
            end
            
        elseif (v.type == "Sprite" and sprite) then
            
            local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
            render.SetMaterial(sprite)
            render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
            
        elseif (v.type == "Quad" and v.draw_func) then
            
            local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
            ang:RotateAroundAxis(ang:Up(), v.angle.y)
            ang:RotateAroundAxis(ang:Right(), v.angle.p)
            ang:RotateAroundAxis(ang:Forward(), v.angle.r)
            
            cam.Start3D2D(drawpos, ang, v.size)
                v.draw_func( self )
            cam.End3D2D()

        end
        
    end
    
end

SWEP.wRenderOrder = nil
function SWEP:DrawWorldModel()
    
    if (self.ShowWorldModel == nil or self.ShowWorldModel) then
        self:DrawModel()
    end
    
    if (!self.WElements) then return end
    
    if (!self.wRenderOrder) then

        self.wRenderOrder = {}

        for k, v in pairs( self.WElements ) do
            if (v.type == "Model") then
                table.insert(self.wRenderOrder, 1, k)
            elseif (v.type == "Sprite" or v.type == "Quad") then
                table.insert(self.wRenderOrder, k)
            end
        end

    end
    
    if (IsValid(self.Owner)) then
        bone_ent = self.Owner
    else
        // when the weapon is dropped
        bone_ent = self
    end
    
    for k, name in pairs( self.wRenderOrder ) do
    
        local v = self.WElements[name]
        if (!v) then self.wRenderOrder = nil break end
        if (v.hide) then continue end
        
        local pos, ang
        
        if (v.bone) then
            pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )
        else
            pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
        end
        
        if (!pos) then continue end
        
        local model = v.modelEnt
        local sprite = v.spriteMaterial
        
        if (v.type == "Model" and IsValid(model)) then

            model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
            ang:RotateAroundAxis(ang:Up(), v.angle.y)
            ang:RotateAroundAxis(ang:Right(), v.angle.p)
            ang:RotateAroundAxis(ang:Forward(), v.angle.r)

            model:SetAngles(ang)
            //model:SetModelScale(v.size)
            local matrix = Matrix()
            matrix:Scale(v.size)
            model:EnableMatrix( "RenderMultiply", matrix )
            
            if (v.material == "") then
                model:SetMaterial("")
            elseif (model:GetMaterial() != v.material) then
                model:SetMaterial( v.material )
            end
            
            if (v.skin and v.skin != model:GetSkin()) then
                model:SetSkin(v.skin)
            end
            
            if (v.bodygroup) then
                for k, v in pairs( v.bodygroup ) do
                    if (model:GetBodygroup(k) != v) then
                        model:SetBodygroup(k, v)
                    end
                end
            end
            
            if (v.surpresslightning) then
                render.SuppressEngineLighting(true)
            end
            
            render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
            render.SetBlend(v.color.a/255)
            model:DrawModel()
            render.SetBlend(1)
            render.SetColorModulation(1, 1, 1)
            
            if (v.surpresslightning) then
                render.SuppressEngineLighting(false)
            end
            
        elseif (v.type == "Sprite" and sprite) then
            
            local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
            render.SetMaterial(sprite)
            render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
            
        elseif (v.type == "Quad" and v.draw_func) then
            
            local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
            ang:RotateAroundAxis(ang:Up(), v.angle.y)
            ang:RotateAroundAxis(ang:Right(), v.angle.p)
            ang:RotateAroundAxis(ang:Forward(), v.angle.r)
            
            cam.Start3D2D(drawpos, ang, v.size)
                v.draw_func( self )
            cam.End3D2D()

        end
        
    end
    
end

function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )
    
    local bone, pos, ang
    if (tab.rel and tab.rel != "") then
        
        local v = basetab[tab.rel]
        
        if (!v) then return end
        
        // Technically, if there exists an element with the same name as a bone
        // you can get in an infinite loop. Let's just hope nobody's that stupid.
        pos, ang = self:GetBoneOrientation( basetab, v, ent )
        
        if (!pos) then return end
        
        pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
        ang:RotateAroundAxis(ang:Up(), v.angle.y)
        ang:RotateAroundAxis(ang:Right(), v.angle.p)
        ang:RotateAroundAxis(ang:Forward(), v.angle.r)
            
    else
    
        bone = ent:LookupBone(bone_override or tab.bone)

        if (!bone) then return end
        
        pos, ang = Vector(0,0,0), Angle(0,0,0)
        local m = ent:GetBoneMatrix(bone)
        if (m) then
            pos, ang = m:GetTranslation(), m:GetAngles()
        end
        
        if (IsValid(self.Owner) and self.Owner:IsPlayer() and 
            ent == self.Owner:GetViewModel() and self.ViewModelFlip) then
            ang.r = -ang.r // Fixes mirrored models
        end
    
    end
    
    return pos, ang
end

function SWEP:CreateModels( tab )

    if (!tab) then return end

    // Create the clientside models here because Garry says we can't do it in the render hook
    for k, v in pairs( tab ) do
        if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and 
                string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then
            
            v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)
            if (IsValid(v.modelEnt)) then
                v.modelEnt:SetPos(self:GetPos())
                v.modelEnt:SetAngles(self:GetAngles())
                v.modelEnt:SetParent(self)
                v.modelEnt:SetNoDraw(true)
                v.createdModel = v.model
            else
                v.modelEnt = nil
            end
            
        elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite) 
            and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then
            
            local name = v.sprite.."-"
            local params = { ["$basetexture"] = v.sprite }
            // make sure we create a unique name based on the selected options
            local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }
            for i, j in pairs( tocheck ) do
                if (v[j]) then
                    params["$"..j] = 1
                    name = name.."1"
                else
                    name = name.."0"
                end
            end

            v.createdSprite = v.sprite
            v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)
            
        end
    end
    
end

local allbones
local hasGarryFixedBoneScalingYet = false

function SWEP:UpdateBonePositions(vm)
    
    if self.ViewModelBoneMods then
        
        if (!vm:GetBoneCount()) then return end
        
        // !! WORKAROUND !! //
        // We need to check all model names :/
        local loopthrough = self.ViewModelBoneMods
        if (!hasGarryFixedBoneScalingYet) then
            allbones = {}
            for i=0, vm:GetBoneCount() do
                local bonename = vm:GetBoneName(i)
                if (self.ViewModelBoneMods[bonename]) then 
                    allbones[bonename] = self.ViewModelBoneMods[bonename]
                else
                    allbones[bonename] = { 
                        scale = Vector(1,1,1),
                        pos = Vector(0,0,0),
                        angle = Angle(0,0,0)
                    }
                end
            end
            
            loopthrough = allbones
        end
        // !! ----------- !! //
        
        for k, v in pairs( loopthrough ) do
            local bone = vm:LookupBone(k)
            if (!bone) then continue end
            
            // !! WORKAROUND !! //
            local s = Vector(v.scale.x,v.scale.y,v.scale.z)
            local p = Vector(v.pos.x,v.pos.y,v.pos.z)
            local ms = Vector(1,1,1)
            if (!hasGarryFixedBoneScalingYet) then
                local cur = vm:GetBoneParent(bone)
                while(cur >= 0) do
                    local pscale = loopthrough[vm:GetBoneName(cur)].scale
                    ms = ms * pscale
                    cur = vm:GetBoneParent(cur)
                end
            end
            
            s = s * ms
            // !! ----------- !! //
            
            if vm:GetManipulateBoneScale(bone) != s then
                vm:ManipulateBoneScale( bone, s )
            end
            if vm:GetManipulateBoneAngles(bone) != v.angle then
                vm:ManipulateBoneAngles( bone, v.angle )
            end
            if vm:GetManipulateBonePosition(bone) != p then
                vm:ManipulateBonePosition( bone, p )
            end
        end
    else
        self:ResetBonePositions(vm)
    end
        
end
    
function SWEP:ResetBonePositions(vm)
    
    if (!vm:GetBoneCount()) then return end
    for i=0, vm:GetBoneCount() do
        vm:ManipulateBoneScale( i, Vector(1, 1, 1) )
        vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )
        vm:ManipulateBonePosition( i, Vector(0, 0, 0) )
    end
    
end

/**************************
    Global utility code
**************************/

// Fully copies the table, meaning all tables inside this table are copied too and so on (normal table.Copy copies only their reference).
// Does not copy entities of course, only copies their reference.
// WARNING: do not use on tables that contain themselves somewhere down the line or you'll get an infinite loop
function table.FullCopy( tab )

    if (!tab) then return nil end
    
    local res = {}
    for k, v in pairs( tab ) do
        if (type(v) == "table") then
            res[k] = table.FullCopy(v) // recursion ho!
        elseif (type(v) == "Vector") then
            res[k] = Vector(v.x, v.y, v.z)
        elseif (type(v) == "Angle") then
            res[k] = Angle(v.p, v.y, v.r)
        else
            res[k] = v
        end
    end
    
    return res
    
end