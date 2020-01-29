if (global.pause) exit;

if (Speed == 0) exit;

var speedX = lengthdir_x(Speed, Direction);	
var speedY = lengthdir_y(Speed, Direction);

x = x + speedX;
y = y + speedY;

// update speed and direction
Speed = point_distance(0, 0, speedX, speedY);
Direction = point_direction(0, 0, speedX, speedY);
image_angle = Direction - 90;

if (isOutsideRoom()) instance_destroy();