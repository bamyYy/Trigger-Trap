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

function MineExplosion() {
	depth = -9999;
    sprite_index = spr_Explosion;
    if (place_meeting(x - 32, y, obj_trapMine)) {
		var trap = instance_place(x - 32, y, obj_trapMine);
		with (trap) {
			MineExplosion();	
		}
    }
	alarm[0] = 45;
}