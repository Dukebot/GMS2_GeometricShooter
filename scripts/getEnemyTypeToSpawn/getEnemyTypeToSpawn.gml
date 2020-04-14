///@param enemyTable
var enemyTable = argument0;

//Calculate enemy type to spawn
var enemyType = noone;
{
	var totalWeight = getTotalWeight(enemyTable);
	var randomValue = random_range(0, totalWeight);
	var accumWeight = 0;
	
	for (var i = 0; i < array_height_2d(enemyTable); i++) { //todo mirar si es array height2d o arrayheight1d
		var _enemyType = enemyTable[i, 0];
		var enemyWeight = enemyTable[i, 1];
	
		if (randomValue >= accumWeight) and (randomValue < (accumWeight + enemyWeight)) {
			enemyType = _enemyType;
			break;
		}
		
		accumWeight += enemyWeight;
	}
	
	if enemyType == noone {
		show_error("EnemyType can't be 'noone'", true);
	}
}
return enemyType;