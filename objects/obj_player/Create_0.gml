MovementSpeed = 4;
PlayerHealth = 3;

frame_counter = 0;

TrapTimer = false;
FireTimer = false;
FireTrapUsage = 0;
FireCheck = false;

y = 350;
if (player_id == 0){
	switch (global.Placement) {
		case 1:
			x = 1248;
			y = 1344;
			break;
		case 2:
			x = 160;
			y = 160;
			break;
		case 3:
			x = 575;
			y = 832;
	}
} else if (player_id == 1){
		switch (global.Placement) {
		case 1:
			x = 1632;
			y = 1344;
			break;
		case 2:
			x = 1752;
			y = 1503;
			break;
		case 3:
			x = 2272;
			y = 832;
			break;
		}
		sprite_index = spr_playerBlue;
}

if (!instance_exists(obj_game)) {
	instance_create_layer(x, y, "Instances", obj_game);	
	alarm[2] = room_speed*10;
}

//Trap Creator
CurrentTrap = 0;
TrapList = [obj_fireTrap, obj_trapTrigger];
show_debug_message(TrapList[0]);
show_debug_message(TrapList[CurrentTrap]);
show_debug_message("TEST")