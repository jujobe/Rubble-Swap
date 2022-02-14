/// @description Slide

var curr_pos = global.current_height + global.shifted_rows;

var ratio = power(pow_base, curr_pos);

var pos_append = (1 - ratio)*start_y;

target_y = start_y - pos_append;

actual_y += (target_y - actual_y)/8;