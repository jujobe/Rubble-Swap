/// @description Drop rubble

if (global.pause) exit;

timer++;

//Skips frame if the drop is too early
if (timer < 60-ln(amount+1)) exit;

timer = 0;

var spawn_index;
if (amount < 20){
	spawn_index = kinda_random(6, (oPlayer.x div 16));
}else{
	//Greater chance to drop rubble on the column with least rubble
	if(irandom(4) < 4){
		spawn_index = array_min_ind(amount_arr);
	}else if (irandom(8) == 4){ //1/8 chance to drop rubble on the highest column
		spawn_index = array_max_ind(amount_arr);
	}else spawn_index = irandom(6);
}

instance_create_layer(spawn_index*global.grid_side, y, "Walls", oRubble);

amount_arr[spawn_index]++;
amount++;

if (array_min(amount_arr) > 6){
	for (var i=0; i < 7; i++){
		amount_arr[i]--;
	}
	oCamera.just_shifted = true;
}