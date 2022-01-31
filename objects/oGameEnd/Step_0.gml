/// @description Restart

if (mouse_check_button_pressed(mb_any) || keyboard_check_pressed(vk_space) || 
  keyboard_check_pressed(vk_enter) || keyboard_check_pressed(global.key_jump) ||
  keyboard_check_pressed(global.key_shoot) || keyboard_check_pressed(ord("R"))){

	room_restart();
}