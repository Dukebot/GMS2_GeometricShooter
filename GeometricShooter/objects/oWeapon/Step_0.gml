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
				
			for (var i = 0; i < numShoots; i++) {
				var shoot = instanceCreate(projectileObject, x, y);
				shoot.Speed = projectileSpeed;
				
				if (i == 0) {
					shoot.Direction = point_direction(x, y, mouse_x, mouse_y);
				} else {					
					shoot.Direction = point_direction(x, y, 
						mouse_x + random_range(-dispersion, dispersion), 
						mouse_y + random_range(-dispersion, dispersion)
					);
				}
			}
		}
	}
}