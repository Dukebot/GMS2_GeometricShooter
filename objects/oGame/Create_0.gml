show_debug_message("Creating oGame.");
if (instance_number(oGame) > 1) {
	show_error("More than 1 oGame has been instanciated.", 1);
}
	
audio_stop_sound(sndBackground);
audio_play_sound(sndBackground, 0, true);

global.pause = false;

gameWin = false;
gameLost = false;

time = 0;

level = 1;
levelUpFrec = 30*60;

//TODO move to the player
playerLives = 3;
playerEnemiesKilled = 0;
playerScore = 0;

enemySpawner = instanceCreate(oEnemyController);
powerUpSpawner = instanceCreate(oPowerUpController);