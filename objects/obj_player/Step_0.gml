depth = -y;

var _input = rollback_get_input();
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

#region Camera
if (player_local) {
    camera_set_view_pos(view_camera[1], x - camera_get_view_width(view_camera[1]) / 2, y - camera_get_view_height(view_camera[1]) / 2);
} else {
    camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0]) / 2, y - camera_get_view_height(view_camera[0]) / 2);
}


#endregion

#region Trap Placing
if (_input.mb_press) {
	var mouseX = _input.mb_x;
	var mouseY = _input.mb_y;
	
	var gridX = floor(mouseX/32)*32;
	var gridY = floor(mouseY/32)*32;
	
	instance_create_layer(gridX, gridY, "Instances", obj_trap);	
	show_debug_message("Trap Created" + string(_input.mb_x) + string(_input.mb_y));
}


#endregion