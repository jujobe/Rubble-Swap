/// @description Slide

var curr_pos = global.current_height + global.shifted_rows;

ratio = power(pow_base, curr_pos);

var pos_append = 1 - ratio*wiggle_room;

var y_pos = max(start_pos, oCamera.target_y + start_pos + pos_append);

y += (y_pos - y)/8;
//y = y_pos;