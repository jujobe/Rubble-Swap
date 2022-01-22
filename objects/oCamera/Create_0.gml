/// @description Set position

x = room_width/2;
y = room_height - global.grid_side;

target_y = y;

global.game_width = 112;
global.game_height = 128;

global.game_scale = 4;

camera_set_view_size(view_camera[0], global.game_width, global.game_height);
window_set_size(global.game_width*global.game_scale, global.game_height*global.game_scale);
surface_resize(application_surface, global.game_width*global.game_scale, global.game_height*global.game_scale);