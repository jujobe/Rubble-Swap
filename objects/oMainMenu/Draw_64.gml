/// @description Draw pause screen

//Drawing the sprite
var ds_grid = menu_pages[page];
var ds_height = ds_grid_height(ds_grid);
var start_y = actual_height/2 - (ds_height+1)*y_buffer/2;

//Draw text
draw_set_halign(fa_center);
var c;
var extra;

var lty;
for (var i=0; i < ds_height; i++){
	lty = start_y + fontsize + i*y_buffer;
	var rtx = start_x + 40;
	c = c_yellow;
	extra = "";
	if (i == menu_option[page]){
		c = c_white;
		extra = "<";
	}
	
	switch (ds_grid[# 1, i]){
		case menu_element_type.input:
			var current_val = ds_grid[# 3, i];
			
			if (makinginput == i) var string_val = "Editing!";
			else var string_val = key_to_string(current_val);

			draw_set_halign(fa_left);
			draw_text_color(rtx, lty, string_val, c,c,c,c, 1);
			draw_set_halign(fa_right);
			break;
		case menu_element_type.toggle:
			draw_set_halign(fa_left);
			var ind = ds_grid[# 3, i] == 1 ? 0 : 1;
			draw_text_color(rtx, lty, ds_grid[# 4, i][ind], c,c,c,c, 1);
			draw_set_halign(fa_right);
			break;
		default: draw_set_halign(fa_center); break;
	}
	draw_text_color(start_x, lty, ds_grid[# 0, i] + extra, c,c,c,c, 1);
}