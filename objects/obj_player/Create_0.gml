MovementSpeed = 4;
PlayerHealth = 3;

frame_counter = 0;

TrapTimer = false;
FireTimer = false;
FireTrapUsage = 0;
FireCheck = false;

y = 350;
if (player_id == 0){
	x =	50;
} else if (player_id == 1){
	x = 1000;	
	sprite_index = spr_playerBlue;
}

if (!instance_exists(obj_game)) {
	instance_create_layer(x, y, "Instances", obj_game);	
	alarm[2] = room_speed*10;
}