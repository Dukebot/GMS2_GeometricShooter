gpu_set_blendmode(bm_add);
{
	draw_sprite_ext(sShootPlasma, 0, x, y, 2, 2, 0, c_white, 0.2);
	draw_self();
}
gpu_set_blendmode(bm_normal);
