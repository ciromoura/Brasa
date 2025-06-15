var texto = textoPlaca
var _texto = string_copy(texto,0,caractere)
draw_set_font(fnt_dialogo)
if instance_exists(obj_fala) and txtembaixo = false
{
	if obj_fala.acabou = true
	{
		draw_text_ext(x -190,y - 390, _texto,32, 380)
		depth = -1
	}
}

if instance_exists(obj_fala) and txtembaixo = true
{
	if obj_fala.acabou = true
	{
		draw_text_ext(x-165,y+100, _texto,32, 380)
		depth = -1
	}
}
draw_set_font(-1)
