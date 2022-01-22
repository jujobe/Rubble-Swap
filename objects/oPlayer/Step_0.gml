/// @description Movement

if (keyboard_check_pressed(ord("A"))) facing = dir.left;
if (keyboard_check_pressed(ord("D"))) facing = dir.right;

if (keyboard_check_pressed(ord("R"))) room_restart();


if (keyboard_check_pressed(vk_space)) shoot_swap();

var vsp = 0;

if (keyboard_check_pressed(ord("W")) && place_meeting(x, y+1, oWall)){ //Initialize jump
	jumptimer = 0;
	vsp = jumpheight;
	y -= vsp;
}else if (jumptimer > 30){	//Not jumping
	if (!place_meeting(x, y+1, oWall)){
		image_index = 1;
		y += 1;
	}else{
		sprite_index = sPlayer;
		update_height(room_height - y + sprite_yoffset);
	}
}else{	//Jumping (going up)
	jumptimer++;
	vsp = jumpheight;
	y -= vsp;
	sprite_index = sPlayerJump;
	image_index = 0;
}

image_xscale = facing;