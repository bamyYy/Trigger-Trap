draw_self();
draw_set_halign(fa_center);
if (FireCheck == true) {
	draw_text(x, y-sprite_height-5,"Fire Trap Out of Gas");
}

if (PlayerHealth > 0) {
	draw_sprite(spr_playerHeart, 0, x, y-sprite_height-10);
	draw_text_color(x-1 ,y-sprite_height-28, string(PlayerHealth), c_white, c_white, c_white, c_white, 0.75);
}