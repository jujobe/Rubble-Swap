/// @description Randomise, Import settings

randomise();

global.grid_side = 16; //px
global.current_height = 0;

ini_open("settings.ini");

//Controls
global.key_jump = ini_read_real("Controls", "Jump", vk_up);
global.key_left = ini_read_real("Controls", "Left", vk_left);
global.key_right = ini_read_real("Controls", "Right", vk_right);
global.key_shoot = ini_read_real("Controls", "Shoot", vk_space);

//Settings
global.music = ini_read_real("Options", "Music", true);
global.sound = ini_read_real("Options", "Sound", true);

//Highscore
global.highscore = ini_read_real("Records", "Highscore", 0);

ini_close();

room_goto(Endless);