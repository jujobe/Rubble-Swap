/// @description Actions

var input_enter = false;

var change = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
input_enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(global.key_shoot);
if (change){
	audio_play_sound(aMenuChange, 10, false);
	if (current_option == 1) current_option = 0;
	else current_option = 1;
}
 
var start_y = actual_height/2 - y_buffer*1.5;

var end_y = start_y + 2*y_buffer;

//Mouse detection
var mouse_menu_x = device_mouse_x_to_gui(0);
var mouse_menu_y = device_mouse_y_to_gui(0);

if (mouse_menu_y > start_y && mouse_menu_y < end_y){
	var mouse_left = mouse_check_button_pressed(mb_left);
	if (abs(mouse_y - mouse_last_y) > 0.8){
		mouse_last_y = mouse_y;
		var old_option = current_option;
		current_option = (mouse_menu_y - start_y) div y_buffer;
		if (current_option != old_option) audio_play_sound(aMenuChange, 10, false);
	}
	
	if (mouse_menu_x > start_x-30 && mouse_menu_x < start_x+50){
		input_enter += mouse_left
	}
}

//Changing settings
if (input_enter){
	audio_play_sound(aMenuChange, 10, false);
	current_option = min(current_option, 2);
	
	if (current_option == 0) instance_destroy();
	else room_goto(MainMenu);
}