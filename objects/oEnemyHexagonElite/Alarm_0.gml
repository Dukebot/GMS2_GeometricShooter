/// @description Shoot Wave of Proectiles
var directionInc = 360/numProjectiles;

for (var i = 0; i < numProjectiles; i++) {
	var shoot = instanceCreate(oEnemyTriangle, x, y);
	shoot.Direction = directionInc*i;
	//shoot.Direction = random(360);
	shoot.Speed = 6;
}

alarm[0] = fireRate;