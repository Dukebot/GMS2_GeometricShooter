enemySpeed = 3;
enemySpeedInc = 0.05;
enemyScore = 100;
enemySpawnRate = 2*60;
enemySpawnRateInc = 0.90;
enemySpawnCooldown = enemySpawnRate;


//ENEMY TABLE:

enum EnemyType {
	triangle, cercle, square, pentagon, hexagon
}

//Weak enemies
enemyTable[0, 0] = EnemyType.triangle;
enemyTable[0, 1] = 100;
enemyTable[1, 0] = EnemyType.cercle;
enemyTable[1, 1] = 100;

//Strong enemies
enemyTable[2, 0] = EnemyType.square;
enemyTable[2, 1] = 0;
enemyTable[3, 0] = EnemyType.pentagon;
enemyTable[3, 1] = 0;
enemyTable[4, 0] = EnemyType.hexagon;
enemyTable[4, 1] = 0;


//Count the Enemy spawned of each type (for debugging purposes)
cercles = 0;
triangles = 0;
squares = 0;
pentagons = 0;
hexagons = 0;