// HUD do jogo ===================================

// Barra de vida:
draw_healthbar(50,45,550,65, (global.life/ global.maxLife) * 100, make_color_rgb(14, 14, 14), make_color_rgb(50, 5, 5), c_red, 0, 1, 1)
// Barra de Energia:
draw_healthbar(24,104,537,127, (global.energia/ global.maxEnergia) * 100, make_color_rgb(14, 14, 14), make_color_rgb(50, 5, 5), c_yellow, 0, 1, 1)

//sprite da vida e da energia:
draw_sprite(spr_lifebar,0,0,-19)
draw_sprite(spr_energiabar, 0, 0, 35)

 