/// @description Display Points

var points = global.current_height + global.shifted_rows - 1;

draw_set_color(orange);
draw_text(_x+3, _y+2, points);
draw_set_color(c_yellow);
draw_text(_x, _y, points);

//draw_text(_x*1.5, _y, instance_count);