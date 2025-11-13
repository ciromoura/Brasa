// Desenhando os itens
for (var i = 0; i < array_length(menu); i++) {
    var _cor = c_white
    var _altura = string_height("I")
    draw_set_font(fnt_menu)

    var _size = 1;

    // Se for o item selecionado → aplica o efeito
    if i = atual{
        _cor = c_yellow
        _size = scale
    }

    draw_set_color(_cor);
    draw_text_transformed(room_width / 2, 500 + _altura * i, menu[i].texto, _size, _size, 0)
	draw_set_halign(fa_center)
}
