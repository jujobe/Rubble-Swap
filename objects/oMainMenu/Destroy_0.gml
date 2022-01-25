/// @description Save changes and unpause

ini_open("Settings.ini");

//Controls:
ini_write_real("Controls", "Left", global.key_left);
ini_write_real("Controls", "Right", global.key_right);
ini_write_real("Controls", "Jump", global.key_jump);
ini_write_real("Controls", "Shoot", global.key_shoot);

//Options:
ini_write_real("Options", "Music", global.music);
ini_write_real("Options", "Sound", global.sound);

ini_close();