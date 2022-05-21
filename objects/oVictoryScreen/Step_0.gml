/// @description Go to next level

if (mouse_check_button_pressed(mb_any) || keyboard_check_pressed(vk_space) || 
  keyboard_check_pressed(vk_enter) || keyboard_check_pressed(global.key_jump) ||
  keyboard_check_pressed(global.key_shoot) || keyboard_check_pressed(ord("R"))){

	var currlvl = level_number(room);
	
	if (currlvl == 10) room_goto(MainMenu);
	else room_goto_next();
}