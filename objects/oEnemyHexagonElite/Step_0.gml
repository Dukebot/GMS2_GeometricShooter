if (global.pause) {
	alarm[0]++;
	exit;
}

if (Speed == 0) exit;

var size = sprite_width/2;
var yTop = 0; //Margin for the score and lives
var bounce = false;

// bouncing screen movement
var speedX = lengthdir_x(Speed, Direction);	
if (x + size > room_width) or (x - size < 0) {
	speedX = -speedX;
	bounce = true;
	audio_sound_pitch(sndBounce, random_range(0.9, 1.1));
	audio_play_sound(sndBounce, 0, false);
}

var speedY = lengthdir_y(Speed, Direction);
if (y + size > room_height) or (y - size < yTop) {
	speedY = -speedY;
	bounce = true;
	audio_sound_pitch(sndBounce, random_range(0.9, 1.1));
	audio_play_sound(sndBounce, 0, false);
}

if (bounce and instance_exists(oPlayer)) {
	Direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speedX = lengthdir_x(Speed, Direction);	
	speedY = lengthdir_y(Speed, Direction);
}
	
x = x + speedX;
y = y + speedY;

// update speed and direction
Speed = point_distance(0, 0, speedX, speedY);
Direction = point_direction(0, 0, speedX, speedY);

image_angle = Direction;