if (global.pause) exit;

if (instance_exists(objectToFollow)) {
	x = objectToFollow.x;
	y = objectToFollow.y;
} else {
	instance_destroy();	
}

fireCount--;
if (fireCount < 0) {
	if (mouse_check_button(mouseKey)) {
		if (ammo > 0) {
			ammo--;
			fireCount = firerate;
				
			var shoot = instanceCreate(projectileObject, x, y);
			shoot.Direction = point_direction(x, y, mouse_x, mouse_y);
			shoot.Speed = projectileSpeed;
		}
	}
}