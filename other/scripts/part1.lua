function MissionSetup()
	PlayerSetPosXYZArea(270,-110,6,0)
	ped = PedCreateXYZ(134,275,-110,6)
	PedRecruitAlly(gPlayer,ped)
end

function main()
	enemy = PedCreateXYZ(130,265,-110,6)
	PedSetPedToTypeAttitude(enemy,13,0)
	PedAttackPlayer(enemy,3)
	repeat
		Wait(0)
	until PedIsDead(enemy)
	MissionSucceed()
end