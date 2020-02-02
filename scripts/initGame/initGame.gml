// Read settings file
ini_open("settings");
{
	global.hScore = ini_read_real("stats", "hScore", 0);
}
ini_close();

//For now, only arcade mode available
enum GameMode {
	arcade, time
}

//Simple enemy state machine
enum enemyState {
	moving, waiting, attacking
}

global.gameMode = GameMode.arcade;
global.debug = true;
global.pause = false;

//Deactivate mouse cursor to draw sprite instead
window_set_cursor(cr_none);

room_goto(rMenu);