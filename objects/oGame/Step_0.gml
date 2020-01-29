
//GAME LOST LOGIC
if (instance_number(oPlayer) == 0) {
	global.pause = true;
	
	if (os_type == os_android) {
		if (global.rewarded) {
			global.rewarded = false;
			instanceCreate(oRevive);
		} 
	}
	if (not instance_exists(oGameOver) and not instance_exists(oRevive)) {
		instanceCreate(oGameOver);
	}
}

//DO NOTHING IF GAME IS PAUSED
if (global.pause) exit;

//DO NOTHING IF OBJECT GET READY EXISTS
if instance_exists(oGetReady) exit;

//INCREASE TIME
time++;

///ARCADE GAME MODE LOGIC
if (global.gameMode == GameMode.arcade) {
	
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
		
///TIME GAME MODE
} else if (global.gameMode == GameMode.time) {
	
	//Check if we reached time limit for game win
	if (time > timeLimit) {
		global.pause = true;
		
		//WIN MENU
		gameWin = true;	
		if not instance_exists(oMainButton) and not instance_exists(oPlayButton)  {
			instanceCreate(oPlayButton, room_width/2, room_height/2 - 150, "Interface");
			instanceCreate(oMainButton, room_width/2, room_height/2, "Interface");
		}
		exit;
	} 
	
	//UPDATE PLAYER SCORE
	playerScore = time/60;
	
}