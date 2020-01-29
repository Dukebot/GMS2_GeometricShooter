///@arg projectileObject
var ProjectileObject = argument0;

///@arg fireRate
var FireRate = argument1;

///@arg projectileSpeed
var ProjectileSpeed = argument2;

///@arg ammo
var Ammo = argument3;

///@arg mouseKey
var MouseKey = argument4;

var weapon = instanceCreate(oWeapon, x, y);

with (weapon) {
	projectileObject = ProjectileObject;	
	firerate = FireRate;
	projectileSpeed = ProjectileSpeed;
	ammo = Ammo;
	mouseKey = MouseKey;
	
	fireCount = firerate;
}

return weapon;