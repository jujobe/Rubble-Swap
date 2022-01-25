//Converts control key to readable string
function key_to_string(key_real){
	var output_str;
	//Converting specific keys to a more user-friendly version
	switch (key_real){
		case vk_up: output_str = "Up"; break;
		case vk_down: output_str = "Down"; break;
		case vk_left: output_str = "Left"; break;
		case vk_right: output_str = "Right"; break;
		case vk_enter: output_str = "Enter"; break;
		case vk_escape: output_str = "Esc"; break;
		case vk_space: output_str = "Space"; break;
		case vk_shift: output_str = "Shift"; break;
		case vk_control: output_str = "Ctrl"; break;
		case vk_alt: output_str = "Alt"; break;
		case vk_tab: output_str = "Tab"; break;
		case vk_backspace: output_str = "Backspace"; break;
		default:
			output_str = chr(key_real);
			if !((output_str >= "A" && output_str <= "Z") || (output_str >= "0" && output_str <= "9")) output_str = "???";
			break;
	}
	
	return output_str;
}