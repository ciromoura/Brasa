if global.pausemenu {
	var _altura = string_height("I")

	draw_sprite(spr_pauseMenu, 0, 0, 0)
	draw_set_font(fnt_menu)
	draw_set_halign(fa_left)

	for (var i = 0; i < array_length(menu); i++){
		var _cor = c_white
		var _size = 1

		// Se for o item selecionado vai aplicar ai o efeito
		if i = atual {
			_cor = c_grey
			_size = scale
		}

		draw_set_color(_cor)
		draw_text_transformed(display_get_gui_width() / 2, 450 + _altura * i, menu[i].texto, _size, _size, 0)
	}


	if (array_length(global.itens) > 0) {
    for (var i = 0; i < array_length(global.itens); i++) {
        var _cor = c_white;
        var _size = 0.8;

        draw_set_color(_cor)
        draw_set_font(fnt_menu)
        draw_text_transformed(220, 150 + _altura * i, $"- {global.itens[i]}", _size, _size, 0)
    }
}

}
