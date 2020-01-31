///@arg posX
var posX = argument0;

///@arg posY
var posY = argument1;

///@return
var powerUpAtPosition = false;

var pup = instanceCreate(oPowerUpExtraLife, posX, posY, "PowerUpLayer");
with (pup) {
	if (place_meeting(x, y, oPowerUp)) {
		powerUpAtPosition = true;
	}
}
instance_destroy(pup);

return powerUpAtPosition;