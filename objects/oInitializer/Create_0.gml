/// @description Randomise, Import settings

randomise();

global.grid_side = 16; //px
global.current_height = 1;

global.pause = false;

ini_open("Settings.ini");

//Controls
global.key_jump = ini_readwrite_real("Controls", "Jump", vk_up);
global.key_left = ini_readwrite_real("Controls", "Left", vk_left);
global.key_right = ini_readwrite_real("Controls", "Right", vk_right);
global.key_shoot = ini_readwrite_real("Controls", "Shoot", vk_space);

//Settings
global.music = ini_readwrite_real("Options", "Music", 1);
global.sound = ini_readwrite_real("Options", "Sound", 1);

//Highscore
global.highscore = ini_readwrite_real("Records", "Highscore", 0);

ini_close();

//GX challenge
global.climb_challenge = "6db08bd7-fb15-4d01-863f-d27dad82fb6e";

audio_group_load(grSound);

room_goto(MainMenu);