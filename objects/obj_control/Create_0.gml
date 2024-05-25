rollback_define_player(obj_player);

if (!rollback_join_game()) {
	rollback_create_game(2, false);
}