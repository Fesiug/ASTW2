EFFECT.Mat = Material("trails/smoke")
EFFECT.MaxLife = 0.005
EFFECT.Transparency = 50
EFFECT.Color = Color( 255, 255, 255 )

function EFFECT:Init(data)
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()

	if !IsValid(self.WeaponEnt) then self.Life = 1 return end

	self.Owner = self.WeaponEnt:GetOwner()
	self.Attachment = data:GetAttachment()
	self.StartPos = self:GetTracerShootPos(self.Position, self.WeaponEnt, self.Attachment)

	if self.WeaponEnt.TracerCol then
		self.Color = self.WeaponEnt.TracerCol
	end

	if self.Owner == LocalPlayer() and !self.Owner:ShouldDrawLocalPlayer() then
		self.StartPos = self.WeaponEnt:GetBorePos() - Vector(0, 0, 4)
	end

	self.EndPos = data:GetOrigin()

	self.StartPos = self.StartPos + ((self.EndPos - self.StartPos):GetNormalized() * math.Clamp((self.EndPos - self.StartPos):Length() * 0.5 * math.Rand(0, 1.5), 0, 32))
	self.Life = 0

	local scale = self.WeaponEnt.Primary.Damage

	self.MaxLife = self.MaxLife * scale

	if self.WeaponEnt.Suppressed then
		self.Transparency = 15
	end

	self:SetRenderBoundsWS(self.StartPos, self.EndPos)
end

function EFFECT:Think()
	self.Life = self.Life + FrameTime() * (1 / self.MaxLife)

	return self.Life < 1
end

function EFFECT:Render()
	render.SetMaterial(self.Mat)
	if !self.StartPos then return end
	if !self.EndPos then return end
	render.DrawBeam(self.StartPos, self.EndPos, Lerp(self.Life, 1.5, 0), 0, 1, Color(self.Color.r, self.Color.g, self.Color.b, Lerp(self.Life, self.Transparency, 0)))
end