/// @description Follow target_y smoothly

y += (target_y - y)/8;

if (just_shifted && abs(target_y - y) < 0.01){
	//show_message("hmm");
	oInfinitor.shift_down();
	//y += global.grid_side;
	target_y = y;
	just_shifted = false;
}