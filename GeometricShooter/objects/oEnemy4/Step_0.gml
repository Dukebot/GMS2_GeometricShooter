if (global.pause) exit;

if (instance_exists(oPlayer)) {
	Direction = point_direction(x, y, oPlayer.x, oPlayer.y);
}

event_inherited();

