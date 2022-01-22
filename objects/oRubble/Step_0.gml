/// @description Fall Down

if (!place_meeting(x, y+1, oWall)){
	y += 1;
	
	//Changes image frame every second
	image_change_counter++;
	if (image_change_counter%30 == 0) image_index = kinda_random(5, image_index);
}else{
	while(!place_meeting(x, y+0.1, oWall)){
		y += 0.1;
	}
}

//Fix overlaps
var overlap = instance_place(x, y, oRubble);

if (overlap != noone && overlap.y > y){
	while (place_meeting(x, y, overlap)){
		y -= 1;
	}
}