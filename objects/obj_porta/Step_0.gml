if distance_to_object(obj_jogador) <= obj_jogador.rangeint and keyboard_check_pressed(ord("E")){
	// Basciamente, Aqui vai verificar se ele tem a chave do armazém
	if noInventario("Chave do armazém"){
		instance_destroy(obj_porta1)
		instance_destroy(obj_dialogo)
		global.xNext = xTeleport
		global.yNext = yTeleport
		fadeIn()
		if alarm[0] = -1{
			alarm[0] = 20
		}
	}
	else{
		instance_create_layer(x,y,"Instances",obj_porta1)
		var _npc = instance_nearest(x,y,obj_npc)
		var _dialogo = instance_create_layer(x,y,"Instances",obj_dialogo)
		_dialogo.npc_nome = _npc.nome
		}
}

