rollback_define_player(obj_player);

rollback_define_input({
	left: vk_left,
	right: vk_right,
	up: vk_up,
	down: vk_down,
	space: vk_space,
	mb_x: m_axisx,
	mb_y: m_axisy,
	mb_press: mb_left
})

if (!rollback_join_game()) {
	rollback_create_game(2, false);
}

view_camera[0] = camera_create();
camera_set_view_size(view_camera[0], 630, 360);

view_camera[1] = camera_create();
camera_set_view_size(view_camera[1], 630, 360);