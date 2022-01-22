/// @description Initialize swap

x += facing*spd;

var hit = instance_place(x, y, oWall);

if (hit != noone){
	if (hit.object_index == oRubble) oPlayer.get_swapped(hit);
	instance_destroy();
}