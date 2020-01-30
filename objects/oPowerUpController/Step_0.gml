if (global.pause) exit;

#region SPAWN POWER UPS
pUpSpawnCooldown--;	
if (pUpSpawnCooldown < 0) {
	pUpSpawnCooldown = pUpSpawnRate;
	
	var powerUpObj = choose(
		oPowerUpPlasma, 
		oPowerUpPlasma, 
		oPowerUpBomb, 
		oPowerUpBomb, 
		oPowerUpExtraLife,
		oPowerUpExtraLife,
		oPowerUpShield,		
	);
	
	var spawnPos = getPowerUpSpawnPos();
	while (isPowerUpAtPosition(spawnPos[0], spawnPos[1])) {
		spawnPos = getPowerUpSpawnPos();
	}
	
	instanceCreate(powerUpObj, spawnPos[0], spawnPos[1], "PowerUpLayer");
}
#endregion

#region SPAWN SPECIAL POWER UP
pUpSpecialSpawnCooldown--;
if (pUpSpecialSpawnCooldown < 0) {
	pUpSpecialSpawnCooldown = pUpSpecialSpawnRate;
	
	var powerUpObj = choose(
		oPowerUpHaste,
		oPowerUpProjectileImprovement, 
		oPowerUpStar, 
		oPowerUpMachineGun,
	);
	
	var spawnPos = getPowerUpSpawnPos();
	while (isPowerUpAtPosition(spawnPos[0], spawnPos[1])) {
		spawnPos = getPowerUpSpawnPos();
	}
	
	instanceCreate(powerUpObj, spawnPos[0], spawnPos[1], "PowerUpLayer");
}
#endregion