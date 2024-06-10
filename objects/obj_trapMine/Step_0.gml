if (instance_exists(obj_player)) {
	if (place_meeting(x,y, obj_player) and explosion == false) {
		explosion = true;
		var player = instance_place(x,y, obj_player);
		with (player) {
			PlayerHealth = 0;	
		}
		sprite_index = spr_Explosion;	
		alarm[0] = sprite_get_number(sprite_index)*sprite_get_number(sprite_index)+5; //1 + 
	}
}