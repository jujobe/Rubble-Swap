function update_height(player_level){
	global.current_height = player_level div global.grid_side;
	oCamera.target_y = room_height - (global.current_height + 2) * global.grid_side;
}