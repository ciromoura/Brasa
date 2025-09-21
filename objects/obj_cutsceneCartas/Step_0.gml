if obj_cartas.interagiu = true
{
	if cutscene_end = false{
	obj_jogador.falando = true
	global.pause = true
	}
	else{
		if global.pause = true{
			global.pause = false
			unpause = true
		}
	}
	
	c1--
	if c1 <= 0
	{
		obj_jogador.image_xscale = -1
		c2--
	}
	if c2 <= 0
	{
		obj_jogador.image_xscale = 1
		c3--
	}
	if c3 <= 0
	{
		instance_destroy(obj_cartas)
		instance_destroy()
		instance_create_layer(x,y,"Instances",obj_narradorCartas)
		var _npc = instance_nearest(x,y,obj_npc)
		var _dialogo = instance_create_layer(x,y,"Instances",obj_dialogo)
		_dialogo.npc_nome = _npc.nome
	}
	
}