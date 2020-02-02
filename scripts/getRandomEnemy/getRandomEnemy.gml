var enemy;
	
if (random(1) < 0.5) {
	//Crecle
	enemy = choose(
		oEnemy1, oEnemy1, oEnemy1, oEnemy1, oEnemy1, 
		oEnemy2, oEnemy2, oEnemy2, oEnemy2, oEnemy2,
		oEnemy3, oEnemy3, oEnemy3,  
		oEnemy4, oEnemy4, oEnemy4, 
	);
	oEnemyController.cercles++;
} 
else if (random(1) < 0.5) {
	//triangle	
	enemy = choose(
		oEnemyTriangle, oEnemyTriangle, oEnemyTriangle, oEnemyTriangle, oEnemyTriangle,
		oEnemyTriangleTeledirigido, oEnemyTriangleTeledirigido, oEnemyTriangleTeledirigido,
	);
	oEnemyController.triangles++;
} 
else if (random(1) < 0.5) {
	//square
	enemy = choose(
		oEnemySquare, oEnemySquare,
		oEnemySquareElite,
	);
	oEnemyController.squares++;
}
else if (random(1) < 0.5) {
	//pentagon
	enemy = choose(
		oEnemyPentagon, oEnemyPentagon, oEnemyPentagon, oEnemyPentagon,
		oEnemyPentagonElite,
	);
	oEnemyController.pentagons++;
}
else {
	//hexagon
	enemy = choose(
		oEnemyHexagon, oEnemyHexagon, oEnemyHexagon, oEnemyHexagon,
		oEnemyHexagonElite,
	);
	oEnemyController.hexagons++;
}

return enemy;