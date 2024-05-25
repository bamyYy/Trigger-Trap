MovementSpeed = 4;

y = room_width/2;
if (player_id == 0){
	x =	50;
} else if (player_id == 1){
	x = room_width-50;	
	sprite_index = spr_playerBlue;
}