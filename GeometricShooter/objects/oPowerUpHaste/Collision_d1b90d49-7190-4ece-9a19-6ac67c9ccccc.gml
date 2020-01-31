if (visible) {
	audio_play_sound(sndPUpPickup, 0, false);
	visible = false;
	alarm[0] = duration;
	
	//Increase Player's Speed
	other.maxSpeed *= speedInc;
	other.machineGun.firerate *= firerateInc;
	other.plasmaGun.firerate *= firerateInc;
}
