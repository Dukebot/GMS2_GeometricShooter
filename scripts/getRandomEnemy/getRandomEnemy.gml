///@return enemy
var enemy;

//Calculate enemy type to spawn
var enemyType = getEnemyTypeToSpawn(enemyTable);

//Get the enemy object to spawn
if (enemyType == EnemyType.cercle) {
	enemy = choose(
		oEnemy1, oEnemy1, oEnemy1, oEnemy1, oEnemy1, 
		oEnemy2, oEnemy2, oEnemy2, oEnemy2, oEnemy2,
		oEnemy3, oEnemy3, oEnemy3,  
		oEnemy4, oEnemy4, oEnemy4, 
	);
	oEnemyController.cercles++;
} 
else if (enemyType == EnemyType.triangle) {
	enemy = choose(
		oEnemyTriangle, oEnemyTriangle, oEnemyTriangle, oEnemyTriangle, oEnemyTriangle,
		oEnemyTriangleTeledirigido, oEnemyTriangleTeledirigido, oEnemyTriangleTeledirigido,
	);
	oEnemyController.triangles++;
} 
else if (enemyType == EnemyType.square) {
	enemy = choose(
		oEnemySquare, oEnemySquare,
		oEnemySquareElite,
	);
	oEnemyController.squares++;
}
else if (enemyType == EnemyType.pentagon) {
	enemy = choose(
		oEnemyPentagon, oEnemyPentagon, oEnemyPentagon, oEnemyPentagon,
		oEnemyPentagonElite,
	);
	oEnemyController.pentagons++;
}
else if (enemyType == EnemyType.hexagon) {
	enemy = choose(
		oEnemyHexagon, oEnemyHexagon, oEnemyHexagon, oEnemyHexagon,
		oEnemyHexagonElite,
	);
	oEnemyController.hexagons++;
}

return enemy;