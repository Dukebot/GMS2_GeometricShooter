/// @description Power Up End

if (instance_exists(oPlayer)) {
	oPlayer.machineGun.projectileSpeed /= projectileSpeedInc;
	oPlayer.plasmaGun.projectileSpeed /= projectileSpeedInc;
}
instance_destroy();