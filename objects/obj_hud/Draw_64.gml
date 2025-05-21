draw_healthbar(x + 12,y + 7, x+515,y - 15, (global.life/global.maxLife)*100, c_black, make_color_rgb(39, 1, 2),make_color_rgb(245, 4, 7),0,true,true)
draw_sprite(spr_lifebar, 1, x - 11, y - 40)
draw_self()

///barra de vida juntamente ao sprite selecionado para organizar a vida