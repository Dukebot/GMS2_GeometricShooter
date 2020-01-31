x = room_width/2;
y = room_height+100;
drawResume = false;
//playerScore = oGame.timeScore+(global.enemyScore*oGame.playerEnemiesKilled);
playerScore = oGame.playerScore;
global.pause = true;
instance_destroy(oPauseButton);
statsUpdated = false;
