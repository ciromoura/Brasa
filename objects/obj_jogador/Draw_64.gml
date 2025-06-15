// HUD do jogo ===================================

// Barra de vida:
draw_healthbar(50,45,550,65, (global.life/ global.maxLife) * 100, make_color_rgb(14, 14, 14), make_color_rgb(50, 5, 5), c_red, 0, 1, 1)
// Barra de Energia:
draw_healthbar(24,104,537,127, (global.energia/ global.maxEnergia) * 100, make_color_rgb(14, 14, 14), make_color_rgb(50, 5, 5), c_yellow, 0, 1, 1)

//sprite da vida e da energia:
draw_sprite(spr_lifebar,0,0,-19)
draw_sprite(spr_energiabar, 0, 0, 35)
if room = rm_tutorial03
{
	draw_sprite(spr_coin,0,30,room_height-80)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fnt_count)
	draw_text(80,room_height-105,string(global.coin))
	draw_set_halign(-1)
	draw_set_valign(-1)
	draw_set_font(-1)
}



//Sistema de fome
if global.fome >= 4{
	draw_sprite(spr_fomehud, 0, 1152, 56)
}
if global.fome = 3{
	draw_sprite(spr_fomehud, 1, 1152, 56)
}
if global.fome = 2{
	draw_sprite(spr_fomehud, 2, 1152, 56)
}
if global.fome = 1{
	draw_sprite(spr_fomehud, 3, 1152, 56)
}
if global.fome <= 0{
	draw_sprite(spr_fomehud, 4, 1152, 56)	
}





