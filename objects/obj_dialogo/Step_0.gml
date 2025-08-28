//acessa o script contendo todos os textos
if init == false
{
	all_textos()
	init = true
}

//pula a pagina caso o texto ja tiver sido totalmente imprimido
//imprime todo o texto de uma vez caso nao esteja totalmente imprimido

if mouse_check_button_pressed(mb_left)
{
	if caractere < string_length(texto_grid[# Infos.Texto, pagina])
	{
		caractere = string_length(texto_grid[# Infos.Texto, pagina])
	}
	else
	{
		alarm[0] = 2
		caractere = 0
		if pagina < ds_grid_height(texto_grid) - 1
		{
			pagina ++
		}
		else
		{
			obj_jogador.falando = false
			instance_destroy()
		}
	}
}