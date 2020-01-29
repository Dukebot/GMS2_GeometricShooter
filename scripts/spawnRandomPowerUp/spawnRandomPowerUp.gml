var margin = 150;
var spawnX = random_range(margin,room_width-margin);
var spawnY = random_range(margin,room_height-margin);

var powerUpObj = choose(
	oPowerUpMachineGun,
	oPowerUpPlasma, 
	oPowerUpBomb, 
	oPowerUpStar, 
	oPowerUpShield, 
	oPowerUpHaste,
	oPowerUpProjectileImprovement, 
	oPowerUpExtraLife
);

return instanceCreate(powerUpObj, spawnX, spawnY, "PowerUpLayer");