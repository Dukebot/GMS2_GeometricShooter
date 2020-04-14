//Choose Enemy to spawn randomly and get it's margin pixels for spawn
with (oEnemyController) {
	var enemy = getRandomEnemy();
	var enemyTemp = instanceCreate(enemy);
	var enemySpawnMargin = sprite_get_width(enemy.sprite_index)/2;
	instance_destroy(enemyTemp);

	//Random Speed Base for enemy
	var Speed = enemySpeed * random_range(0.8, 1.2);
	if (enemy == oEnemySquare or enemy == oEnemySquareElite) Speed /= 2;
	if (enemy == oEnemyTriangle) Speed *= 2;

	//Choose spawn position
	var randomCorner = random(1);
	var enemySpawnX;
	var enemySpawnY;

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
	var enemyInstance = instance_create_layer(enemySpawnX, enemySpawnY, "EnemyLayer", enemy);
	enemyInstance.Speed = Speed;

	return enemyInstance;
}
