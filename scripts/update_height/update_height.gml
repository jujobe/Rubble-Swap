function update_height(player_level){
	global.current_height = player_level div global.grid_side;
	oCamera.target_y = min(room_height - global.grid_side, room_height - (global.current_height + 3) * global.grid_side);
	if (global.current_height > 6) oCamera.just_shifted = true;
}