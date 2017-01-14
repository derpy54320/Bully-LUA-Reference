function MissionSetup()
	PlayerSetPosXYZArea(270,-110,6,0)
	DisablePunishmentSystem(true)
	enemies = {}
	for i = 1,10 do
		enemies[i] = PedCreateXYZ(165,270+i,-110,6)
		PedSetPedToTypeAttitude(enemies[i],13,0)
		PedAttackPlayer(enemies[i],3)
	end
end

function main()
	repeat
		Wait(0)
	until PedsAreDead()
	MissionSucceed()
end

function PedsAreDead()
	for i = 1,10 do
		if PedIsValid(enemies[i]) and not PedIsDead(enemies[i]) then
			return false
		end
	end
	return true
end