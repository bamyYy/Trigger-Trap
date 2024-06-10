if (petroleumHasRun == false) {
    for (var yy = 0; yy < room_height; yy += 32) {
        for (var xx = 0; xx < room_width; xx += 32) {
            var randm = irandom_range(1, 16); 
            if (randm == 2 && !instance_position(xx, yy, obj_petroleum)) {
                instance_create_layer(xx, yy, "Petroleum", obj_petroleum);
            }
        }
    }
    petroleumHasRun = true;
}