if (global.pause) exit;

//Read Input
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
spacePressed = keyboard_check_pressed(vk_space);
	
//Movement
{
	var directionX = (right - left);
	var directionY = (down - up);
	acceleration = maxSpeed/8;

	if (directionX != 0 or directionY != 0) {
		Direction = getMovementDirection(directionX, directionY);
		Speed += acceleration;
	} else {
		Speed = 0;
	}
	Speed = clamp(Speed, 0, maxSpeed);
		
	x += lengthdir_x(Speed, Direction);
	y += lengthdir_y(Speed, Direction);
}

//Weapon Logic inside weapon object!

//Activate Bomb
if (spacePressed and bombs > 0) {
	bombs--;
	explosion();
}

// sprite of player
sprite_index = sPlayer;
if (shield) sprite_index = sShieldEffect;
if (star) sprite_index = sStarEffect;
	
// parpadear
if (hit) {
	hitCount--;
	if (hitCount < 0) hit = false;
	parpadear();
} else {
	image_alpha = 1;
}
	
//can't leave the screen
stayInRoom();