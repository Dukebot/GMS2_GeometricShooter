/// @description Restore player attributes

if (instance_exists(oPlayer)) {
	oPlayer.machineGun.numShoots -= numAdditionalShoots;
}
instance_destroy();