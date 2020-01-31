if (visible) {
	audio_play_sound(sndPUpPickup, 0, false);
	visible = false;
	alarm[0] = duration;
	
	other.machineGun.projectileSpeed *= projectileSpeedInc;
	other.plasmaGun.projectileSpeed *= projectileSpeedInc;
}
