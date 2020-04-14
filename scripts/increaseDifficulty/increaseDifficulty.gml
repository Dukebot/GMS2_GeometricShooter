///@param level
var level = argument0;

with (oEnemyController) {
	// enemies move faster
	enemySpeed += enemySpeedInc;
	// enemies spawn faster
	enemySpawnRate *= enemySpawnRateInc;
		
	// strong enemies has more chance to appear
	if (level == 2) {
		enemyTable[2, 1] = 10;
	}
	if (level == 3) {
		enemyTable[2, 1] = 20;
	}
	if (level == 4) {
		enemyTable[2, 1] = 30;
	}
	if (level == 5) {
		enemyTable[3, 1] = 10;
	}
	if (level == 6) {
		enemyTable[3, 1] = 20;
	}
	if (level == 7) {
		enemyTable[3, 1] = 30;
	}
	if (level == 8) {
		enemyTable[4, 1] = 10;
	}
	if (level == 9) {
		enemyTable[4, 1] = 20;
	}
	if (level == 10) {
		enemyTable[4, 1] = 30;
	}
}
