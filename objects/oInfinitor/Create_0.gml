/// @description Define function

global.shifted_rows = 0;

bottom_y = room_height - global.grid_side*1.5;

//Deletes the bottom-most row of rubble and shifts everything down by one cell
function shift_down(){
	//Clearing the bottom row
	var bottom_rubble = ds_list_create();
	collision_line_list(0, bottom_y, room_width, bottom_y, oRubble, false, false, bottom_rubble, false);
	var list_size = ds_list_size(bottom_rubble);
	for (var i=0; i < list_size; i++){
		instance_destroy(bottom_rubble[| i]);
	}
	ds_list_destroy(bottom_rubble);
	
	//Shifting everything down
	var shift_worthy = ds_list_create();
	collision_rectangle_list(0, 0, room_width, room_height, oRubble, false, false, shift_worthy, false);
	collision_rectangle_list(0, 0, room_width, room_height, oPlayer, false, false, shift_worthy, false);
	collision_rectangle_list(0, 0, room_width, room_height, oProjectileSwap, false, false, shift_worthy, false);
	collision_rectangle_list(0, 0, room_width, room_height, oCamera, false, false, shift_worthy, false);
	collision_rectangle_list(0, 0, room_width, room_height, oBackground, false, false, shift_worthy, false);


	list_size = ds_list_size(shift_worthy);
	for (var i=0; i < list_size; i++){
		shift_worthy[| i].y += global.grid_side;
	}
	ds_list_destroy(shift_worthy);
	
	global.shifted_rows++;
}