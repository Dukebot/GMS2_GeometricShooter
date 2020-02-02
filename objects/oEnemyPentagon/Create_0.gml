event_inherited();

movingTime = 0.5*60;
waitingTime = 0.25*60;

state = enemyState.moving;
time = movingTime;

size = 1;
sizeIncrement = 0.01;

numShoots = 3;
shootsShooted = 0;

hitPoints = 4;

canDodge = false;
randomDodge = choose(-1, 1);