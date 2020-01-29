show_debug_message("Creating oGame.");
show_debug_message("Game mode is = " + string(global.gameMode));

if (instance_number(oGame) > 1) show_error("More than 1 oGame has been instanciated.", 1);
	
audio_stop_sound(sndBackground);
audio_play_sound(sndBackground, 0, true);

global.pause = false;

gameWin = false;
gameLost = false;

time = 0;

level = 1;
levelUpFrec = 10*60;

playerLives = 3;
playerEnemiesKilled = 0;
playerScore = 0;

global.rewarded = true;
global.gamesPlayed++;

enemySpawner = instanceCreate(oEnemyController);
powerUpSpawner = instanceCreate(oPowerUpController);

if (global.gameMode == GameMode.time) {
	level = global.levelSelected;
	timeLimit = 60*60;
	
	for (var i = 0; i < level; i++) {
		enemySpawner.enemySpeed += enemySpawner.enemySpeedInc;
		enemySpawner.enemySpawnRate *= enemySpawner.enemySpawnRateInc;
	}
	spawnRandomEnemy();
}

if os_type == os_android {	
	internet = admob_has_internet_connection();
	alarm[0] = 5;
}