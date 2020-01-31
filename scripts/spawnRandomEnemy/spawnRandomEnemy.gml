//Choose Enemy to spawn randomly
var enemy = 0;
var enemySpawnMargin = 0;

//var enemies = [oEnemy1, oEnemy2, oEnemy3, oEnemy4, oCacodemon];
enemy = choose(
	oEnemy1, 
	oEnemy1, 
	oEnemy2, 
	oEnemy2, 
	oEnemy3, 
	oEnemy3, 
	oEnemy4, 
	oEnemy4, 
	oEnemyTriangle, 
	oEnemyTriangle, 
	oEnemyTriangleTeledirigido, 
	oEnemyTriangleTeledirigido, 
	oEnemySquare,
	oEnemySquareElite,
);
var enemyTemp = instanceCreate(enemy);
enemySpawnMargin = sprite_get_width(enemy.sprite_index)/2;
instance_destroy(enemyTemp);

//Choose spawn position
var randomCorner = random(1);
var enemySpawnX;
var enemySpawnY;

//Random Speed Base for enemy
var Speed = oEnemyController.enemySpeed * random_range(0.8, 1.2);
if (enemy == oEnemySquare or enemy == oEnemySquareElite) Speed /= 2;
if (enemy == oEnemyTriangle) Speed *= 2;

// calculate spawn point based on random corner spawn reference
if (randomCorner < 0.25) {
	// spawn from left
	enemySpawnX = enemySpawnMargin;
	enemySpawnY = random_range(enemySpawnMargin, room_height-enemySpawnMargin);
} 
else if (randomCorner < 0.5) { 
	// spawn from top
	enemySpawnX = random_range(enemySpawnMargin, room_width-enemySpawnMargin);
	enemySpawnY = enemySpawnMargin;
} 
else if (randomCorner < 0.75) { 
	// spawn from right
	enemySpawnX = room_width-enemySpawnMargin;
	enemySpawnY = random_range(enemySpawnMargin,room_height-enemySpawnMargin);
} 
else { 
	// spawn from bot
	enemySpawnX = random_range(enemySpawnMargin,room_width-enemySpawnMargin);
	enemySpawnY = room_height-enemySpawnMargin;
}


	
// spawn a random enemy in a random corner
var enemy = instance_create_layer(enemySpawnX, enemySpawnY, "EnemyLayer", enemy);
enemy.Speed = Speed;

return enemy;