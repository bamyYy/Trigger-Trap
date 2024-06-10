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
    // Add a debug message to track function calls
    show_debug_message("MineExplosion called at x: " + string(x) + ", y: " + string(y));

    depth = -9999;
    sprite_index = spr_Explosion;

    // Add a limit for recursion depth to prevent infinite loops
    if (instance_exists(obj_trapMine)) {
        var trap = instance_place(x - 32, y, obj_trapMine);
        if (!is_undefined(trap) && trap != id) {
            with (trap) {
                if (variable_instance_exists(id, "explosion_count")) {
                    explosion_count += 1;
                } else {
                    explosion_count = 1;
                }
                // Limit recursion depth
                if (explosion_count < 10) {
                    MineExplosion();
                }
            }
        }
    }

    // Set an alarm for destruction after a delay (ensure it's only set once)
    if (alarm[0] <= 0) {
        alarm[0] = 45;
    }
}
