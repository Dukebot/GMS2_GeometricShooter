if (visible) {
	audio_play_sound(sndPUpPickup, 0, false);
	visible = false;
	alarm[0] = duration;
	
	other.machineGun.numShoots += numAdditionalShoots;
}
