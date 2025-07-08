// HUD do jogo ===================================

// Barra de vida:
draw_healthbar(30,45,550,65, (global.life/ global.maxLife) * 100, make_color_rgb(14, 14, 14), make_color_rgb(50, 5, 5), c_red, 0, 1, 1)
// Barra de Energia:
draw_healthbar(30,84,550,107, (global.energia/ global.maxEnergia) * 100, make_color_rgb(14, 14, 14), make_color_rgb(50, 35, 35), c_yellow, 0, 1, 1)

//sprite da vida e da energia:


//Sprite que mostra a quantidade de dinheiro
if room = rm_tutorial03
{
	draw_sprite(spr_coin,0,30,room_height-80)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fnt_count)
	draw_text(75,room_height-105,string(global.money))
	draw_set_halign(-1)
	draw_set_valign(-1)
	draw_set_font(-1)
}


//Sistema de fome





