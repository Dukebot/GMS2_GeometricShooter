draw_set_font(fontPixel);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

var scale = 5;

draw_text_transformed(x, y, "GEOMETRIC SHOOTER", scale, scale, 0);

draw_sprite_ext(sPlayerCrosshair, 0, mouse_x, mouse_y, 1, 1, 0, c_white, 1);