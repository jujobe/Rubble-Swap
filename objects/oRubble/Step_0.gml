/// @description Fall Down

if (!place_meeting(x, y+1, oWall)){
	y += 1;
	
	//Changes image frame every second
	image_change_counter++;
	if (image_change_counter%30 == 0) image_index = kinda_random(5, image_index);
}