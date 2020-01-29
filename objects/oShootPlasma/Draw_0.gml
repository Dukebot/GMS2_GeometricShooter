//use it's own sprite with low alpha and larger scale.



gpu_set_blendmode(bm_add);
{
	var scale = 2.5;
	draw_sprite_ext(sShootPlasma, 0, x, y, scale, scale, 0, c_white, 0.2);
	draw_self();
}
gpu_set_blendmode(bm_normal);

