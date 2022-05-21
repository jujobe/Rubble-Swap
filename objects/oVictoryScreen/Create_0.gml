/// @description Puase and set parameters

global.pause = true;

actual_width = global.game_width*global.game_scale;
actual_height = global.game_height*global.game_scale;

start_x = actual_width/2;

draw_set_halign(fa_center);

bottomtext = "Go to next level?";
if (room == Level10) bottomtext = "Go back to menu?";

yellow = make_color_rgb(243, 208, 47);