/// @description Puase and set parameters

global.pause = true;

actual_width = global.game_width*global.game_scale;
actual_height = global.game_height*global.game_scale;

start_x = actual_width/2;

draw_set_halign(fa_center);

result = global.current_height + global.shifted_rows - 1;