
function EFFECT:Init(data)
    self.Origin = data:GetOrigin()
    local emitter = ParticleEmitter( self.Origin + Vector( 0, 0, 16 ) )

    local particle = emitter:Add("effects/muzzleflash" .. math.random(1,4), self.Origin)

    particle:SetVelocity( 25 * VectorRand() )
    particle:SetDieTime( 0.1 )
    particle:SetStartAlpha( 255 )
    particle:SetEndAlpha( 0 )
    particle:SetStartSize( math.Rand(400,500) )
    particle:SetEndSize( math.Rand(1500,2000) )
    particle:SetRoll( math.Rand(0,360) )
    particle:SetRollDelta( math.Rand(-2,2) )
    particle:SetColor( 255, 255, 255 )
    particle:SetAirResistance( 55 )
    particle:SetLighting( false )
    particle:SetCollide( false )

    for i = 0,15 do
        particle = emitter:Add( "particle/smokesprites_000" .. math.random(1,9) , self.Origin )
        local scol = math.Rand( 100, 125 )

        particle:SetVelocity( 2500 * VectorRand() )
        particle:SetDieTime( math.Rand(5.5, 7.5) )
        particle:SetStartAlpha( 255 )
        particle:SetEndAlpha( 0 )
        particle:SetStartSize( math.Rand(300,500) )
        particle:SetEndSize( math.Rand(750,1000) )
        particle:SetRoll( math.Rand(0,360) )
        particle:SetRollDelta( math.Rand(-1,1) )
        particle:SetColor( scol,scol,scol )
        particle:SetAirResistance( 200 )
        particle:SetGravity( Vector( 0, 0, math.Rand(10,40) ) )
        particle:SetLighting( true )
        particle:SetCollide( true )
        particle:SetBounce( 0.5 )
    end

    particle = emitter:Add( "sprites/heatwave", self.Origin )
        particle:SetAirResistance( 0 )
        particle:SetDieTime( 1.5 )
        particle:SetStartAlpha( 255 )
        particle:SetEndAlpha( 255 )
        particle:SetStartSize( 250 ) 
        particle:SetEndSize( 0 )
        particle:SetRoll( math.Rand(180,480) )
        particle:SetRollDelta( math.Rand(-5,5) )
        particle:SetColor( 255, 255, 255 )

    emitter:Finish()

end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end