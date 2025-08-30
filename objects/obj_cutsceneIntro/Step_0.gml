if cutscene_end = false and alpha != 0
{
	alpha -= 0.002
}

if alpha = 0.2 and cutscene_end = false
{
	instance_create_layer(x,y,"Instances",obj_narradorIntro)
}

if alpha = 0.2 and cutscene_end = false
{
	var _npc = instance_nearest(x,y,obj_npc)
	var _dialogo = instance_create_layer(x,y,"Instances",obj_dialogo)
	_dialogo.npc_nome = _npc.nome
}

if alpha < 0.2 and !instance_exists(obj_dialogo)
{
	cutscene_end = true
}

if cutscene_end = true
{
	alpha += 0.006
}

if alpha >= 1 and cutscene_end = true
{
	room_goto_next()
}
