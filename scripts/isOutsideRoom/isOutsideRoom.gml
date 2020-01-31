if (x + sprite_width/2 < 0 or x - sprite_width/2 > room_width 
	or y + sprite_height/2 < 0 or y - sprite_height/2 > room_height
) {
	return true;
}

return false;