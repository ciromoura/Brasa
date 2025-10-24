var tempo = global.contador / room_speed
var minutos = floor(tempo div 60)
var segundos = floor(tempo mod 60)
var centesimos = floor((tempo - floor(tempo)) * 100)
var texto = two_digits(minutos) + ":" + two_digits(segundos) + "." + two_digits(centesimos);

if global.timer = true{
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_color(c_white)
	draw_text(20, 20, texto)
}


// Função auxiliar para dois dígitos
function two_digits(n){
    if (n < 10) return "0" + string(n)
    else return string(n)
}