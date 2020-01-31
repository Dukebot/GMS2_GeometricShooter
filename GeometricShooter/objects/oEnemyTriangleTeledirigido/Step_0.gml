if (global.pause) exit;

if (Speed == 0) exit;

speedBonusTime--;
if (speedBonusTime > 0) {
	if (instance_exists(oPlayer)) {
		var playerDirection = point_direction(x, y, oPlayer.x, oPlayer.y);
		Direction = playerDirection;
	}
} else if (speedBonusTime == 0) {
	Speed *= 3;
}

var speedX = lengthdir_x(Speed, Direction);	
var speedY = lengthdir_y(Speed, Direction);

x = x + speedX;
y = y + speedY;

// update speed and direction
Speed = point_distance(0, 0, speedX, speedY);
Direction = point_direction(0, 0, speedX, speedY);

image_angle = Direction;

if (isOutsideRoom()) instance_destroy();