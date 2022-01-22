/// @description Parameters

enum dir{
	left = -1,
	right = 1
}

jumpheight = 2 * global.grid_side / 30; //Jumps 2 blocks
jumptimer = 80;

facing = dir.left;

function shoot_swap(){
	if (instance_exists(oProjectileSwap)) exit;
	var proj = instance_create_layer(x, y, "Projectile", oProjectileSwap);
	proj.facing = facing;
	proj.image_xscale = facing;
}

function get_swapped(rubble_id){
	var x_offset = global.grid_side/2;
	var y_offset = global.grid_side - sprite_yoffset;
	
	var new_x = rubble_id.x + x_offset;
	var new_y = rubble_id.y + y_offset;
	
	rubble_id.x = x - x_offset;
	rubble_id.y = y - y_offset;
	x = new_x;
	y = new_y;
}