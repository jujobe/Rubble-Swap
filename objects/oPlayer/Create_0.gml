/// @description Parameters

enum dir{
	left = -1,
	right = 1
}

jumpheight = 2.2 * global.grid_side / 30; //Jumps 2 blocks
jumptimer = 80;
in_air = true;

facing = dir.right;

function shoot_swap(){
	if (instance_exists(oProjectileSwap)) exit;
	audio_play_sound(random_asset("aShoot", 1), 2, false);
	var proj = instance_create_layer(x, y, "Projectile", oProjectileSwap);
	proj.facing = facing;
	proj.image_xscale = facing;
}

//Used in get_swapped() to correctly position the player
x_offset = global.grid_side/2;
y_offset = global.grid_side - sprite_yoffset;

function get_swapped(block_id){
	audio_play_sound(aSwap, 3, false);

	var block_name = object_get_name(block_id.object_index);

	//Process victory
	if (block_name == "oVictoryBlock"){
		instance_create_layer(0, 0, "Extra", oVictoryScreen);
		exit;
	}

	var new_x = block_id.x + x_offset;
	var new_y = block_id.y + y_offset;
	
	if (room == Endless) oRubbleRain.amount_arr[block_id.x div global.grid_side]--;
	
	block_id.x = x - x_offset;
	block_id.y = y - y_offset;
	x = new_x;
	y = new_y;
	
	if (room == Endless) oRubbleRain.amount_arr[block_id.x div global.grid_side]++;	
	jumptimer = 40;
	
	//If it's a sand block
	if (block_name == "oSand") instance_destroy(block_id);
}