if (instance_exists(obj_player)) {
	if (place_meeting(x,y,obj_player)) {
		mineFlag = true;
	}
}

if (mineFlag) {
	TriggerNeighbor();
	instance_create_layer(x,y,"Instances", obj_expolsion);
	instance_destroy();
}