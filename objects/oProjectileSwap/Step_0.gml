/// @description Initialize swap

if (global.pause) exit;

x += facing*spd;

var hit = instance_place(x, y, oWall);

if (hit != noone){
	if (hit.object_index == oRubble || object_is_ancestor(hit.object_index, oRubble)) oPlayer.get_swapped(hit);
	instance_destroy();
}