function save_highscore(){
	var points = global.current_height + global.shifted_rows - 1;

	//GX challenge
	//if (points > global.highscore && gxc_get_query_param("challenge") == global.climb_challenge){
	//    gxc_challenge_submit_score(points);
	//}
	
	global.highscore = max(points, global.highscore);
	
	ini_open("Settings.ini");
	
	ini_write_real("Records", "Highscore", global.highscore);
	
	ini_close();
}