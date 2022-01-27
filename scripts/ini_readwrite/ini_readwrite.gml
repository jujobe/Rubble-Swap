function ini_readwrite_real(section, key, _default){
	var exists = ini_key_exists(section, key);
	if !(exists){
		ini_write_real(section, key, _default);
	}
	return ini_read_real(section, key, _default);
}

function ini_readwrite_string(section, key, _default){
	var exists = ini_key_exists(section, key);
	if !(exists){
		ini_write_string(section, key, _default);
	}
	return ini_read_string(section, key, _default);
}