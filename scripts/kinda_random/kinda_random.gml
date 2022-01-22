//Returns a random number that isn't the given "avoid" number
function kinda_random(_max, avoid){
	var rand_number = irandom(_max);
	while (rand_number == avoid){
		rand_number = irandom(_max);
	}
	return rand_number;
}