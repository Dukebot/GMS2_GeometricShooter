if (visible) {
	audio_play_sound(sndPUpPickup, 0, false);
	visible = false;
}

if (global.inventoryMode) {
	//other.plasmaGun += plasmaGunAmount;
	other.plasmaGun.ammo += plasmaGunAmount;
	instance_destroy();
}