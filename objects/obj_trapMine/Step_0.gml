if (instance_exists(obj_player)) {
	if (place_meeting(x,y, obj_player) and explosion == false) {
		explosion = true;
		sprite_index = spr_Explosion;	
		alarm[0] = 45;
	}
}