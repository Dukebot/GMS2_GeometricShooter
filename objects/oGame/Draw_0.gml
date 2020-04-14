//DRAW HUD SPRITE AT TOP
//draw_sprite(sHUD, 0, room_width/2, 0);

//DRAW PLAYER LIVES
var margin = 30;
for (var i = 0; i < playerLives; i++) {
	draw_sprite(sLifeHud, 0, i*margin + 20, 24);
}

//PLAYER INVENTORY
if (instance_exists(oPlayer)) with (oPlayer) {
	var scoreFont = font_add_sprite_ext(sFontScore, "0123456789", true, 2);
	{
		draw_set_font(scoreFont);
		draw_set_halign(fa_left);
		draw_set_valign(fa_center);
			
		var spriteStartX = 25;
		var textStartX = 55;
			
		var startY = 75;
		var incrementY = 50;
		var textMarginY = 8;
			
		var scaleX = 1;
		var scaleY = 1;
				
		draw_sprite(sPowerUpPlasma, 0, spriteStartX, startY + incrementY*0);
		draw_text_transformed(textStartX, startY + incrementY*0 + textMarginY, 
			string(plasmaGun.ammo), scaleX, scaleY, 0);
	
		draw_sprite(sPowerUpBomb, 0, spriteStartX, startY + incrementY*1);
		draw_text_transformed(textStartX, startY + incrementY*1 + textMarginY, 
			string(bombs), scaleX, scaleY, 0);
	}
	font_delete(scoreFont);
}


draw_set_color(c_white);

//DRAW SCORE AND LEVEL
var scoreFont = font_add_sprite_ext(sFontScore, "0123456789", true, 2);
{
	draw_set_font(scoreFont);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	//draw_text(room_width - 3, 25, string(playerScore));
	draw_text_transformed(room_width/2, 25, string(playerScore), 2, 2, 0);
	draw_text_transformed(room_width/2, 65, string(level), 2, 2, 0);
}
font_delete(scoreFont);

//DEBUG INFORMATION
if (global.debug) {
	var marginY = 200;
	var margin = 25;
	
	draw_set_halign(fa_left);
	
	draw_text(margin, marginY + margin*1, "Level " + string(level));
	draw_text(margin, marginY + margin*2, "Time " + string(time/60));
	draw_text(margin, marginY + margin*3, "Kills " + string(playerEnemiesKilled));
	draw_text(margin, marginY + margin*4, "Enemy Speed " + string(enemySpawner.enemySpeed));
	draw_text(margin, marginY + margin*5, "Enemy SpawnRate (s) " + string(enemySpawner.enemySpawnRate/60));
	
	drawSpawnedEnemiesInfo(margin, marginY);
}