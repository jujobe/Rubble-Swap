/// @description Draw menu

var start_y = actual_height/2 - y_buffer*3/2;

var c;
//Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (current_option == -1) c = select_col;
else c = non_select_col;
draw_text_color(back_x, back_y, "Back", c,c,c,c, 1);

var lty;
var ltx;
for (var i=0; i < n_rows; i++){
	lty = start_y + fontsize + i*y_buffer;
	for (var j=0; j < levels_per_row; j++){
		ltx = start_x + fontsize + j*x_buffer;
		var curr = i*levels_per_row+j;
		c = non_select_col;
		if (curr == current_option){
			c = select_col;
		}
		
		draw_text_color(ltx, lty, level_number(levels_arr[curr]), c,c,c,c, 1);
	}
}
