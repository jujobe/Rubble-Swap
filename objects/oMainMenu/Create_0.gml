/// @description Initialize grids and others variables

enum menu_page{
	main,
	audio,
	controls,
	leave,
	height
}

enum menu_element_type{
	script_runner,
	page_transfer,
	toggle,
	input
}

function menu_setup(){
	start_x = global.game_width/2;
}

//Creating menu pages
ds_menu_main = create_menu_page(
	["Endless", menu_element_type.script_runner, resume_game],
	["Settings", menu_element_type.page_transfer, menu_page.audio],
	["Exit", menu_element_type.page_transfer, menu_page.leave])

ds_settings = create_menu_page(
	["Controls", menu_element_type.page_transfer, menu_page.controls],
	["Music", menu_element_type.toggle, toggle_music, global.sound, ["ON", "OFF"]],
	["Sound", menu_element_type.toggle, toggle_sound, global.music, ["ON", "OFF"]],
	["Back", menu_element_type.page_transfer, menu_page.main])

ds_controls = create_menu_page(
	["Jump", menu_element_type.input, "key_up", global.key_up],
	["Left", menu_element_type.input, "key_left", global.key_left],
	["Right", menu_element_type.input, "key_right", global.key_right],
	["Shoot", menu_element_type.input, "key_shoot", global.key_shoot],
	["Back", menu_element_type.page_transfer, menu_page.main]) 

page = 0;
menu_pages = [ds_menu_main, ds_settings, ds_controls];
menu_len = array_length(menu_pages);
for (var i = menu_len; i > 0; i--){
	menu_option[i] = 0;
}

fontsize = font_get_size(fPoints);
y_buffer = 40;
menu_setup();

makinginput = -1; //Index of control being changed (also used like a bool with < 0)