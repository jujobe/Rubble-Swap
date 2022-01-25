//Create ds grid
function create_menu_page(){
	var arg;
	for (var i = argument_count-1; i >= 0; i--){
		arg[i] = argument[i];
	}
	var ds_grid_id = ds_grid_create(5, argument_count);
	for (var i = 0; i < argument_count; i++){
		var array = arg[i];
		var array_len = array_length(array);
		for (var j = 0; j < array_len; j++){
			ds_grid_id[# j, i] = array[j];
		}
	}
	return ds_grid_id;
}

function resume_game(){
	instance_destroy(oPause);
}

function go_back(){
	if (room == MainMenu) game_end();
	else room_goto(MainMenu);
}