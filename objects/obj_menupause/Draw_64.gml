if global.pausemenu{
	// Aqui vemos quase as mesmas características do menu normal, com diferença que não estamos mudando a room
    var _altura = string_height("I") + 10

    draw_sprite(spr_pauseMenu,0,0,0)

	for (var i = 0; i < array_length(menu); i++){
        var _cor = c_white;
        if i = atual{
			_cor = c_grey
			var _size = 1.2
		}
		else{
			var _size = 1
		}

        draw_set_color(_cor)
        draw_set_font(fnt_menu)
        draw_text_transformed(700, 430 + _altura * i, menu[i].texto, _size, _size, 0)
    }
	if (array_length(global.itens) > 0) {
    for (var i = 0; i < array_length(global.itens); i++) {
        var _cor = c_white;
        var _size = 1;

        draw_set_color(_cor);
        draw_set_font(fnt_menu);
        draw_text_transformed(250, 250 + _altura * i, global.itens[i], _size, _size, 0);
    }
}

}

