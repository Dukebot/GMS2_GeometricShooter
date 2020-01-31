if (x == 0 and y == 0) exit;
if (isOutsideRoom()) exit;

if instance_number(oGame) > 0 {
	oGame.playerEnemiesKilled++;
	instance_create_layer(x,y,"Interface", o100points);
	instanceCreate(oExplosionFlash, x, y);
}