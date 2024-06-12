if (instance_exists(obj_player)) {
	if (place_meeting(x,y,obj_player)) {
		var player = instance_place(x,y,obj_player);
		with (player) {
			PlayerHealth = 0;	
		}
		mineFlag = true;
		
	}
}

if (mineFlag) {
	TriggerNeighbor();
	instance_create_layer(x,y,"Instances", obj_expolsion);
	instance_destroy();
}