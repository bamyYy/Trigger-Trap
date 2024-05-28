function ResetPetroleum(){
	with (obj_game) {
		instance_destroy();	
	}
	
	with (obj_petroleum) {
		instance_destroy();	
	}
	
	if (!instance_exists(obj_game)) {
		instance_create_layer(x, y, "Instances", obj_game);
	}
}