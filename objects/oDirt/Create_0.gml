/// @description Create enum, set sprite

enum dirt_type{
	grass = 0,
	full_dirt,
	bot_left,
	bot_right,
	bot_both
}

dirttype = dirt_type.grass;

image_index = dirttype*5 + irandom(4);

function change_type(newtype){
	dirttype = clamp(newtype, dirt_type.grass, dirt_type.bot_both);
	image_index = dirttype*5 + irandom(4);
}
