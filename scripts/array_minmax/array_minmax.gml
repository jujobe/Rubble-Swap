function array_max(arr){
	var size = array_length(arr);
	var currmax = arr[0];
	for (var i=1; i < size; i++){
		if (currmax < arr[i]) currmax = arr[i];
	}
	
	return currmax;
}

function array_min(arr){
	var size = array_length(arr);
	var currmin = arr[0];
	for (var i=1; i < size; i++){
		if (currmin > arr[i]) currmin = arr[i];
	}
	
	return currmin;
}

function array_max_ind(arr){
	var size = array_length(arr);
	var currmax = 0;
	var tallest = ds_list_create();
	ds_list_add(tallest, 0);
	for (var i=1; i < size; i++){
		if (arr[currmax] < arr[i]){
			ds_list_clear(tallest);
			ds_list_add(tallest, i); 
			currmax = i;
		}else if (arr[currmax] == arr[i]) ds_list_add(tallest, i); 
	}
	
	var output = tallest[| irandom(ds_list_size(tallest)-1)];
	ds_list_destroy(tallest);
	
	return output;
}

function array_min_ind(arr){
	var size = array_length(arr);
	var currmin = 0;
	var shortest = ds_list_create();
	ds_list_add(shortest, 0);
	for (var i=1; i < size; i++){
		if (arr[currmin] > arr[i]){
			ds_list_clear(shortest);
			ds_list_add(shortest, i);
			currmin = i;
		}else if (arr[currmin] == arr[i]) ds_list_add(shortest, i); 
	}
	
	var output = shortest[| irandom(ds_list_size(shortest)-1)];
	ds_list_destroy(shortest);
	
	return output;
}