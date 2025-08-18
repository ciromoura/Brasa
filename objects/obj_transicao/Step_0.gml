if room = rm_menu or room = rm_tutorial01
{
	if (mudei)
	{
		alpha -= .06
	}
	else
	{
		alpha += .01
	}
}

if room != rm_menu
{
	if (mudei)
	{
		alpha -= .02
	}
	else
	{
		alpha += .02
	}
}
//caso o jogador não tenha mudado a sala ainda, a tela escurece gradativamente, caso mudou, vai esclarecendo.


if room = rm_menu
{
	if (alpha >=1)
	{
		room_goto_next()
	}
}
if room != rm_menu
{
	if (alpha >=1)
	{
		room_goto(destino)
		obj_jogador.x = destino_x
		obj_jogador.y = destino_y
	}
}


//caso a tela esteja totalmente escura, muda de sala

if (mudei && alpha <=0)
{
	instance_destroy()
}
//caso a tela esteja totalmente visível, se destrói, completando a transição