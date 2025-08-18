// Desenhando os itens.
for (var i = 0; i < array_length(menu); i++){
    
    var _margem = 0
    var _cor = c_white
    draw_set_font(fnt_menu)
    var _altura = 150
    
    if (i = atual){
        _margem = margem
        _cor = c_yellow
    }
    
    // Aqui está a posição de cada um:
    draw_set_color(_cor)
    draw_text(20 + _margem, 200 + _altura * i, menu[i].texto)
    draw_set_color(-1)
    draw_set_font(-1)
}