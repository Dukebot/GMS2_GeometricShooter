audio_play_sound(sndPlayerHit, 0, false);
oGame.playerLives--; 
hit = true;
hitCount = hitDuration;
with(other) instance_destroy();
if (oGame.playerLives <= 0) instance_destroy(); 