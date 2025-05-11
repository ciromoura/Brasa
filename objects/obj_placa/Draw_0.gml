var texto = "Use as setas para se mover. Você pode pular pressionando a tecla Z."
var _texto = string_copy(texto,0,caractere)
draw_set_font(fnt_dialogo)
if instance_exists(obj_fala)
{
	if obj_fala.acabou = true
	{
		draw_text_ext(obj_placa.x -190,obj_placa.y - 390, _texto,32, 380)
		depth = -1
	}
}
