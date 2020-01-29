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
global.gameMode = GameMode.arcade;

global.debug = false;
global.pause = false;

//Deactivate mouse cursor to draw sprite instead
window_set_cursor(cr_none);

room_goto(rMenu);