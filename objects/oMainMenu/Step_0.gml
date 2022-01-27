/// @description Navigation

var input_enter = false;

var ds_grid = menu_pages[page];
ds_height = ds_grid_height(ds_grid);

if (makinginput < 0){
	var input_up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
	var input_down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
	input_enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(global.key_shoot);
	var ochange = input_down - input_up;
	if (ochange != 0){
		menu_option[page] += ochange;
		if (menu_option[page] > ds_height-1) menu_option[page] = 0;
		else if (menu_option[page] < 0) menu_option[page] = ds_height - 1;
	}
}else{ //Changing a control
	var new_key = keyboard_lastkey;
	
	if (new_key != 0){
		variable_global_set(ds_grid[# 2, makinginput], new_key);
		ds_grid[# 3, makinginput] = new_key;
		makinginput = -1;
	}
}
 
var start_y = actual_height/2 - (ds_height+1)*y_buffer/2;

var end_y = start_y + ds_height*y_buffer;

//Mouse detection
var mouse_menu_x = device_mouse_x_to_gui(0);
var mouse_menu_y = device_mouse_y_to_gui(0);

if (mouse_menu_y > start_y && mouse_menu_y < end_y){
	var mouse_left = mouse_check_button_pressed(mb_left);
	menu_option[page] = (mouse_menu_y - start_y) div y_buffer;
	
	if (mouse_menu_x > start_x-100 && mouse_menu_x < start_x+100){
		input_enter += mouse_left
	}
}

//Changing settings
if (input_enter){
	menu_option[page] = min(menu_option[page], ds_height);
	switch (ds_grid[# 1, menu_option[page]]){
		case menu_element_type.page_transfer:
			page = ds_grid[# 2, menu_option[page]];
			break;
		case menu_element_type.toggle:
			script_execute(ds_grid[# 2, menu_option[page]]);
			ds_grid[# 3, menu_option[page]] = ds_grid[# 3, menu_option[page]] == 1 ? 0 : 1; 
			break;
		case menu_element_type.script_runner:
			script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);
			break;
		case menu_element_type.input:
			makinginput = menu_option[page];
			io_clear();
			break;
	}
}