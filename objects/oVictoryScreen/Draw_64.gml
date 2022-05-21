/// @description Draw text

draw_set_alpha(0.7);
var c = c_dkgrey;
draw_rectangle_color(0,0, actual_width, actual_height, c,c,c,c, false);
draw_set_alpha(1);

//Draw text
draw_set_color(yellow);

draw_text(start_x, 120, "Success!");

draw_text(start_x, 220, bottomtext);