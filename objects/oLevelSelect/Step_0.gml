/// @description Actions

if (keyboard_check_pressed(vk_escape)){
	room_goto(MainMenu);
	exit;
}

var input_enter = false;

var vchange = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
var hchange = keyboard_check_pressed(ord("D")) + keyboard_check_pressed(vk_right) - keyboard_check_pressed(ord("A")) - keyboard_check_pressed(vk_left);
input_enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(global.key_shoot);
if (vchange != 0 || hchange != 0){
	audio_play_sound(aMenuChange, 10, false);
	current_option += vchange * levels_per_row + hchange;
	current_option %= levels_amount;
	if (current_option < 0) current_option = -1; //Go to the top
}

//Mouse detection
var mouse_menu_x = device_mouse_x_to_gui(0);
var mouse_menu_y = device_mouse_y_to_gui(0);
var mouse_left = mouse_check_button_pressed(mb_left);

var old_option = current_option;
	
//Check if mouse is hovering over "Back"
if (mouse_menu_x > back_x-60 && mouse_menu_x < back_x+60 && mouse_menu_y > back_y-40 && mouse_menu_y < back_y+50){
	old_option = current_option;
	current_option = -1;
	input_enter += mouse_left;
}else if (mouse_menu_x > start_x-15 && mouse_menu_x < end_x+15 && mouse_menu_y > start_y-15 && mouse_menu_y < end_y+15){
	//Hovering over levels
	if (abs(mouse_y - mouse_last_y) > 0.8 || abs(mouse_x - mouse_last_x) > 0.8){
		mouse_last_x = mouse_x;
		current_col = (mouse_menu_x - start_x) div x_buffer;
		
		mouse_last_y = mouse_y;
		current_row = (mouse_menu_y - start_y) div y_buffer;

		//Get the commit
		input_enter += mouse_left;
	
		old_option = current_option;
		current_option = current_row * levels_per_row + current_col;
	}
}
if (current_option != old_option) audio_play_sound(aMenuChange, 10, false);

//Changing settings
if (input_enter){
	audio_play_sound(aMenuChange, 10, false);
	if (current_option == -1){
		room_goto(MainMenu);
		exit;
	}
	current_option = clamp(current_option, 0, levels_amount-1);
	
	room_goto(levels_arr[current_option]);
}
