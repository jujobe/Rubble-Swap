/// @description Set font

draw_set_font(fPoints);
draw_set_halign(fa_center);
orange = make_color_rgb(101, 57, 15);
yellow = make_color_rgb(218, 182, 19);

_x = global.game_width*global.game_scale / 2;
_y = 30;

//For the highscore
_x_h = _x * 1.55;

highscore = "HS:" + string(global.highscore);