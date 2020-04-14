///@param enemyTable
var enemyTable = argument0;

///@return total weight of the enemy table
var totalWeight = 0;

for (var i = 0; i < array_height_2d(enemyTable); i++) { //todo mirar si es array height2d o arrayheight1d
	totalWeight += enemyTable[i, 1];
}
return totalWeight;