/// @description Initialize grids and others variables

enum menu_page{
	main,
	controls,
	audio,
	height
}

enum menu_element_type{
	script_runner,
	page_transfer,
	toggle,
	input
}

//Creating menu pages
ds_menu_main = create_menu_page(
	["Endless", menu_element_type.script_runner, room_goto, Endless],
	//["Settings", menu_element_type.page_transfer, menu_page.audio],
	["Controls", menu_element_type.page_transfer, menu_page.controls],
	["Sound", menu_element_type.toggle, toggle_sound, global.sound, ["ON", "OFF"]]);

//ds_settings = create_menu_page(
//	["Music", menu_element_type.toggle, toggle_music, global.music, ["ON", "OFF"]],
//	["Sound", menu_element_type.toggle, toggle_sound, global.sound, ["ON", "OFF"]],
//	["Back", menu_element_type.page_transfer, menu_page.main])

ds_controls = create_menu_page(
	["Jump", menu_element_type.input, "key_jump", global.key_jump],
	["Left", menu_element_type.input, "key_left", global.key_left],
	["Right", menu_element_type.input, "key_right", global.key_right],
	["Shoot", menu_element_type.input, "key_shoot", global.key_shoot],
	["Back", menu_element_type.page_transfer, menu_page.main])

page = 0;
//menu_pages = [ds_menu_main, ds_settings, ds_controls];
menu_pages = [ds_menu_main, ds_controls];

menu_len = array_length(menu_pages);
for (var i = menu_len; i > 0; i--){
	menu_option[i] = 0;
}

actual_width = global.game_width*global.game_scale;
actual_height = global.game_height*global.game_scale;
draw_set_font(fPoints);
fontsize = font_get_size(fPoints);
y_buffer = 60;
start_x = actual_width/3;

mouse_last_y = mouse_y; //Check recent mouse movement
makinginput = -1; //Index of control being changed (also used like a bool with < 0)

select_col = make_color_rgb(218, 182, 19);
non_select_col = make_color_rgb(143, 83, 45);