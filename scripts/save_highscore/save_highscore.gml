function save_highscore(){
	var result = global.current_height + global.shifted_rows - 1;
	
	global.highscore = max(result, global.highscore);
	
	ini_open("Settings.ini");
	
	ini_write_real("Records", "Highscore", global.highscore);
	
	ini_close();
}