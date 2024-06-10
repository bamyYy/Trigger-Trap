if (instance_exists(obj_player)) {
    if (place_meeting(x, y, obj_player) && explosion == false) {
        explosion = true;

        // Set player health to 0
        var player = instance_place(x, y, obj_player);
        if (!is_undefined(player)) {
            player.PlayerHealth = 0;
        }

        // Trigger MineExplosion (ensure it's only triggered once)
        if (!variable_instance_exists(id, "explosion_count")) {
            explosion_count = 0;
            MineExplosion();
        }
    }
}
