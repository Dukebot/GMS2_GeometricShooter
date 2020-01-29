event_inherited();

enum enemyState {
	moving,
	waiting,
	attacking
}

state = enemyState.moving;

movingTime = 1*60;
waitingTime = 0.5*60;

time = movingTime;

size = 1;
sizeIncrement = 0.01;