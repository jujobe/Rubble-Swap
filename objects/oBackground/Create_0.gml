/// @description Parameters

//0.99^n
pow_base = 0.9;

wiggle_room = sprite_height - global.game_height;

//Excess up, 1 pixel down and 6*16 to distance away from player
start_pos = oCamera.y - sprite_height + 1;

y = max(start_pos, oCamera.y + start_pos + 1 - pow_base*wiggle_room);