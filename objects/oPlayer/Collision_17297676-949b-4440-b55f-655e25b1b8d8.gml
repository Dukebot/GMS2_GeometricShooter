//With star we are invincible and destroy the enemy
if (star or hit) {
	//Do nothing if star, just destroy the other item

//With shield we create a big explosion and lose the shield
} else if (shield) {
	shield = false;
	explosion();

//With no protection we take damage
} else {	
	takeDamage();
}

//Destroy the enemy collided
with(other) instance_destroy();