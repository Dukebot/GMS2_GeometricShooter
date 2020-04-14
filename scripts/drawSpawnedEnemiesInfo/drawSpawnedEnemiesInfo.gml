///@param margin
var margin = argument0;

///@param marginY
var marginY = argument1;

with (oEnemyController) {
	draw_text(margin, marginY + margin * 7, "Cercles " + string(cercles));
	draw_text(margin, marginY + margin * 8, "triangles " + string(triangles));
	draw_text(margin, marginY + margin * 9, "Squares " + string(squares));
	draw_text(margin, marginY + margin * 10, "Pentagons " + string(pentagons));
	draw_text(margin, marginY + margin * 11, "Hexagons " + string(hexagons));
}