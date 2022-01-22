/// @description 

timer++;

//Skips frame if the drop is too early
if (timer < 60-(amount*0.2)) exit;

timer = 0;

if (amount < 20){
	var spawn_index = kinda_random(6, (oPlayer.x div 16));
}else{
	var spawn_index = irandom(6);
}

instance_create_layer(spawn_index*global.grid_side, y, "Walls", oRubble);