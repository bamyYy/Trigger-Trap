var _input = rollback_get_input();

#region Movement
if (_input.left and !collision_point(x-MovementSpeed, y, obj_stop, true, false)) {
	x -= MovementSpeed;	
}
if (_input.right and !collision_point(x+MovementSpeed, y, obj_stop, true, false)) {
	x += MovementSpeed;	
}
if (_input.up and !collision_point(x, y-MovementSpeed, obj_stop, true, false)) {
	y -= MovementSpeed;	
}
if (_input.down and !collision_point(x, y+MovementSpeed, obj_stop, true, false)) {
	y += MovementSpeed;	
}

#endregion
