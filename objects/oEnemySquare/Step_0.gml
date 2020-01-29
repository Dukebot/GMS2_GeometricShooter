if (global.pause) exit;

if (instance_exists(oPlayer)) {
	Direction = point_direction(x, y, oPlayer.x, oPlayer.y);
}
image_angle = Direction;

time--;

if (state == enemyState.moving) {
	if (time < 0) {
		time = waitingTime;
		state = enemyState.waiting;
		exit;
	}
	size -= sizeIncrement;
	if (size < 1) size = 1;
	event_inherited();
} 
else if (state == enemyState.waiting) {
	if (time < 0) {
		state = enemyState.attacking;
		exit;
	} 
	size += sizeIncrement;
} 
else if (state == enemyState.attacking) {	
	var enemy = spawnRandomEnemy();
	enemy.x = x;
	enemy.y = y;
	enemy.Direction = Direction;
		
	time = movingTime;	
	state = enemyState.moving;
}

image_xscale = size;
image_yscale = size;
