// Desenhando os itens.
for (var i = 0; i < array_length(menu); i++){
    
    var _cor = c_white
    draw_set_font(fnt_menu)
    var _altura = string_height("I")
	draw_set_halign(fa_center)
    
    if (i = atual){
        _cor = c_yellow
		var _size = 1.3
    }
	else{
		var _size = 1
	}
    
    // Aqui está a posição de cada um:
    draw_set_color(_cor)
    draw_text_transformed(room_width/ 2, 500 + _altura * i, menu[i].texto,_size,_size,0)
    draw_set_color(-1)
    draw_set_font(-1)
	draw_set_halign(-1)
}