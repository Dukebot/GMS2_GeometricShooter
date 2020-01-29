/// @description Restore player attributes

if (instance_exists(oPlayer)) {
	oPlayer.maxSpeed /= speedInc;
	oPlayer.machineGun.firerate /= firerateInc;
	oPlayer.plasmaGun.firerate /= firerateInc;
}
instance_destroy();