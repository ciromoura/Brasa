if global.pausemenu{
	// Aqui vemos quase as mesmas características do menu normal, com diferença que não estamos mudando a room
    var gui_w = display_get_gui_width()
    var gui_h = display_get_gui_height()
    var _altura = string_height("I")

    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false)

    for (var i = 0; i < array_length(menu); i++){
        var _cor = c_white;
        if i = atual{
			_cor = c_grey
		}

        draw_set_color(_cor)
        draw_set_font(fnt_menu)

        draw_text(gui_w/2, gui_h/2 + _altura * i, menu[i].texto)
    }
}
