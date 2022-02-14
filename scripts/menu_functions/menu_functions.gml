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

function toggle_sound(){
	global.sound = global.sound == 1 ? 0 : 1;
	audio_group_set_gain(grSound, global.sound, 1);
}

function toggle_music(){
	global.music = global.music == 1 ? 0 : 1;
	audio_group_set_gain(grMusic, global.music, 1);
}