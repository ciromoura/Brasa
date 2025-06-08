if room = rm_tutorial02
{
	alpha -= .02
}
else
{
	alpha += .02
}

if (alpha >=1)
{
	room_goto(destino)
	obj_jogador.x = destino_x
	obj_jogador.y = destino_y
}

if (mudei && alpha <=0)
{
	instance_destroy()
}