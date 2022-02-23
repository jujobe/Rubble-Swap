function random_asset(base, _max){
	return asset_get_index(base + string(irandom(_max)));
}