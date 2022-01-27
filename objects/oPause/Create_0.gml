/// @description Paramters

global.pause = true;

pause_menu[1] = "Menu";
pause_menu[0] = "Resume";

current_option = 0;

actual_width = global.game_width*global.game_scale;
actual_height = global.game_height*global.game_scale;
draw_set_font(fPoints);
fontsize = font_get_size(fPoints);
y_buffer = 60;
start_x = actual_width/3;