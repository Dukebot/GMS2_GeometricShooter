if (global.pause) exit;

time--;

if (instance_exists(oPlayer)) {
	Direction = point_direction(x, y, oPlayer.x, oPlayer.y);
}

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
		randomDodge = choose(-1, 1);
		exit;
	} 
	size += sizeIncrement;
	
	Direction += 90*randomDodge;
	
	event_inherited();
} 
else if (state == enemyState.attacking) {	
	var enemy = spawnRandomEnemy();
	enemy.x = x;
	enemy.y = y;
	enemy.Direction = Direction;
		
	time = movingTime;	
	state = enemyState.moving;
}

image_angle = Direction;
image_xscale = size;
image_yscale = size;

stayInRoom();