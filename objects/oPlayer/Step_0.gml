/// @description Movement

if (global.pause){
	image_speed = 0;
	exit;
}else image_speed = 1;

if (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape)){
	instance_create_layer(0, 0, "Extra", oPause);
	exit;
}

if (keyboard_check_pressed(ord("R"))){
	save_highscore();
	room_restart();
}

if (keyboard_check_pressed(global.key_left)) facing = dir.left;
if (keyboard_check_pressed(global.key_right)) facing = dir.right;

image_xscale = facing;

if (keyboard_check_pressed(global.key_shoot)) shoot_swap();

var vsp = 0;

if (keyboard_check_pressed(global.key_jump) && place_meeting(x, y+1, oWall)){ //Initialize jump
	in_air = true;
	jumptimer = 0;
	vsp = jumpheight;
	y -= vsp;
}else if (jumptimer > 30){	//Not jumping
	if (!place_meeting(x, y+1.25, oWall)){
		image_index = 1;
		y += 1.25;
	}else{
		while(!place_meeting(x, y+0.1, oWall)){
			y += 0.1;
		}
		if (in_air){
			in_air = false;
			update_height(room_height - y + sprite_yoffset);
		
			audio_play_sound(random_asset("aLand", 3), 2, false);
			sprite_index = sPlayer;
		}
	}
}else{	//Jumping (going up)
	jumptimer++;
	vsp = jumpheight;
	y -= vsp;
	sprite_index = sPlayerJump;
	image_index = 0;
}

if (place_meeting(x, y, oRubble)) instance_create_layer(0,0, "Extra", oGameEnd);