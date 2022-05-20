/// @description Set up Level array

global.game_width = 176;
global.game_height = 112;

levels_arr = [Level1, Level2, Level3, Level4, Level5, Level6, Level7, Level8, Level9, Level10];
levels_amount = array_length(levels_arr);

n_rows = 2;
levels_per_row = levels_amount / n_rows;

//Currently selected row and column for selecting a level
current_row=0; current_col=0;
//[0; n] means a level, -1 means the back button
current_option = 0;

actual_width = global.game_width*global.game_scale;
actual_height = global.game_height*global.game_scale;
draw_set_font(fPoints);
fontsize = font_get_size(fPoints);
y_buffer = 60;
x_buffer = 60;

start_x = actual_width/3;
end_x = start_x + levels_per_row*x_buffer;

start_y = actual_height/2 - y_buffer*1.5;
end_y = start_y + 2*y_buffer;

back_x = actual_width/5;
back_y = actual_height*7/8;

mouse_last_x = mouse_x;
mouse_last_y = mouse_y; //Check recent mouse movement

select_col = make_color_rgb(218, 182, 19);
non_select_col = make_color_rgb(143, 83, 45);
