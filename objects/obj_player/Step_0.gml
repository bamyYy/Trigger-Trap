depth = -y;
draw_set_font(Font1);

var _input = rollback_get_input();

#region Movement
if (_input.left and !collision_point(x-MovementSpeed, y, obj_wallHorizontal, true, false)) {
	x -= MovementSpeed;	
}
if (_input.right and !collision_point(x+MovementSpeed, y, obj_wallHorizontal, true, false)) {
	x += MovementSpeed;	
}
if (_input.up and !collision_point(x, y-MovementSpeed, obj_wallHorizontal, true, false)) {
	y -= MovementSpeed;	
}
if (_input.down and !collision_point(x, y+MovementSpeed, obj_wallHorizontal, true, false)) {
	y += MovementSpeed;	
}

#endregion

#region Camera & Health
if (player_local) {
    camera_set_view_pos(view_camera[1], x - camera_get_view_width(view_camera[1]) / 2, y - camera_get_view_height(view_camera[1]) / 2);
} else {
    camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0]) / 2, y - camera_get_view_height(view_camera[0]) / 2);
}

if (place_meeting(x, y, obj_fireTrap) && obj_fireTrap.sprite_index == spr_trapRed) {
    frame_counter++;

    if (frame_counter >= 60) {
        PlayerHealth--;

        frame_counter = 0;
    }
} else {
    frame_counter = 0;
}

if (PlayerHealth <= 0){
	instance_destroy();
	show_message("The Game Has Ended");
}

#endregion

//if (CurrentTrap > 2 or CurrentTrap < 0) {
//	show_message("Masaka")	
//}

#region Trap Placing
if (_input.scroll_up) {
	if (CurrentTrap+1 > 2) { //??????
		CurrentTrap = 0;
	} else {
		CurrentTrap++;	
	}
}

if (_input.scroll_down) {
	if (CurrentTrap-1 < 0) {
		CurrentTrap = array_length(TrapList)-1;
	} else {
		CurrentTrap--;	
	}
}


if (_input.mb_press) {
	var mouseX = _input.mb_x;
	var mouseY = _input.mb_y;
	
	var gridX = floor(mouseX/32)*32;
	var gridY = floor(mouseY/32)*32;
	
	if (CurrentTrap == 0) {
	    if (!instance_position(gridX, gridY, obj_parTrap) and FireTrapUsage < 3) {
	        instance_create_layer(gridX, gridY, "Instances", obj_fireTrap);
	    }
	} else if (CurrentTrap == 1) {
		if (!instance_position(gridX, gridY, obj_parTrap)) {
	        instance_create_layer(gridX, gridY, "Instances", obj_trapTrigger);
	    }
	} else if (CurrentTrap == 2) {
		if (!instance_position(gridX, gridY, obj_parTrap)) {
	        instance_create_layer(gridX, gridY, "Instances", obj_trapMine);
		}
	}
	

	
	//if (!instance_position(gridX, gridY, obj_parTrap)) {
	//	instance_create_layer(gridX, gridY, "Instances", TrapList[CurrentTrap]);
	//}
	
}

if (place_meeting(x, y, obj_trapTrigger)) {
	if (_input.space and TrapTimer == false) {
		if (FireTrapUsage < 3 and instance_exists(obj_fireTrap)) {
			with (obj_fireTrap) {
				sprite_index = spr_trapRed;	
			}
			alarm[0] = room_speed*4;
			TrapTimer = true;
			FireTrapUsage++;
		} else {
			alarm[1] = room_speed*2.5;
			FireCheck = true;
		}
	}
}

//Switch the Traps

//if (CurrentTrap > array_length(TrapList)) {
//	CurrentTrap = 0;	
//} else if (CurrentTrap < 0) {
//	CurrentTrap = array_length(TrapList);	
//}
#endregion