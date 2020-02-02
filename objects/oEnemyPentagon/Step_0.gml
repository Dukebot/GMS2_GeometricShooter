if (global.pause) exit;

time--;

if (instance_exists(oPlayer)) {
	Direction = point_direction(x, y, oPlayer.x, oPlayer.y);
}

if (state == enemyState.moving) {
	//satate transition
	if (time < 0) {
		time = waitingTime;
		state = enemyState.waiting;
		exit;
	}
	size -= sizeIncrement;
	moveEnemy();
} 
else if (state == enemyState.waiting) {
	//satate transition
	if (time < 0) {
		state = enemyState.attacking;
		exit;
	} 
	size += sizeIncrement;
} 
else if (state == enemyState.attacking) {	
	var enemy = instanceCreate(oEnemyTriangle);
	enemy.x = x;
	enemy.y = y;
	enemy.Direction = Direction;
	enemy.Speed = 8;
		
	//satate transition
	shootsShooted++;
	if (shootsShooted >= numShoots) {
		time = movingTime;	
		state = enemyState.moving;
		shootsShooted = 0;
	} else {
		time = waitingTime;
		state = enemyState.waiting;
	}
}

if (size < 1) size = 1;	

image_angle = Direction;
image_xscale = size;
image_yscale = size;

stayInRoom();