function array_max_ind(arr){
	var size = array_length(arr);
	var currmax = 0;
	for (var i=1; i < size; i++){
		if (arr[currmax] < arr[i]) currmax = i;
	}
	
	return currmax;
}

function array_min_ind(arr){
	var size = array_length(arr);
	var currmin = 0;
	for (var i=1; i < size; i++){
		if (arr[currmin] > arr[i]) currmin = i;
	}
	
	return currmin;
}