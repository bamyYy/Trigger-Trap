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

CreatePetroleum();
