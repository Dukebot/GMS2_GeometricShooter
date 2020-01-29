//GAME LOST LOGIC
if (instance_number(oPlayer) == 0) {
	global.pause = true;
	if (not instance_exists(oGameOver)) {
		instanceCreate(oGameOver);
	}
}

//DO NOTHING IF GAME IS PAUSED
if (global.pause) exit;

//INCREASE TIME
time++;

///INCREASE LEVEL AND DIFFICULTY OF THE GAME
if (time > level*levelUpFrec) {
	level++;
		
	with (enemySpawner) {
		// enemies move faster
		enemySpeed += enemySpeedInc;
		// enemies spawn faster
		enemySpawnRate *= enemySpawnRateInc;
	}
	with (powerUpSpawner) {
		// power ups spawn faster
		pUpSpawnRate *= pUpSpawnRateInc;
	}
}
	
//UPDATE PLAYER SCORE
playerScore = time + enemySpawner.enemyScore*playerEnemiesKilled;