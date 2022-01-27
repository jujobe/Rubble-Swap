/// @description Actions

var input_enter = false;

var input_up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
var input_down = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_down);
input_enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(global.key_shoot);
var ochange = input_down - input_up;
if (ochange != 0){
	current_option += ochange;
	if (current_option > 1) current_option = 0;
	else if (current_option < 0) current_option = 1;
}
 
var start_y = actual_height/2 - (2+1)*y_buffer/2;

var end_y = start_y + 2*y_buffer;

//Mouse detection
var mouse_menu_x = device_mouse_x_to_gui(0);
var mouse_menu_y = device_mouse_y_to_gui(0);

if (mouse_menu_y > start_y && mouse_menu_y < end_y){
	var mouse_left = mouse_check_button_pressed(mb_left);
	current_option = (mouse_menu_y - start_y) div y_buffer;

	if (mouse_menu_x > start_x-100 && mouse_menu_x < start_x+100){
		input_enter += mouse_left
	}
}

//Changing settings
if (input_enter){
	current_option = min(current_option, 2);
	
	if (current_option == 0) instance_destroy();
	else room_goto(MainMenu);
}