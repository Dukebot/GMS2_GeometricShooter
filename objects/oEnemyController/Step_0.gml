if (global.pause) exit;

///SPAWN ENEMIES
enemySpawnCooldown--;
if (enemySpawnCooldown < 0) {
	enemySpawnCooldown = enemySpawnRate;
	
	spawnRandomEnemy();
}