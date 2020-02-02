if (state == enemyState.moving) {
	time = waitingTime;
	state = enemyState.waiting;
} 
else if (state == enemyState.waiting) {
	state = enemyState.attacking;
} 
else if (state == enemyState.attacking) {	
	time = movingTime;	
	state = enemyState.moving;
}