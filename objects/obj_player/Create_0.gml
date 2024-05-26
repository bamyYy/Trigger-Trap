MovementSpeed = 4;

y = 350;
if (player_id == 0){
	x =	50;
} else if (player_id == 1){
	x = 1000;	
	sprite_index = spr_playerBlue;
}

show_debug_message(player_local.x);

show_debug_message(player_local.y);