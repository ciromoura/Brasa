if distance_to_object(obj_jogador) <= obj_jogador.rangeint and keyboard_check_pressed(ord("E")){
	// Basciamente, Aqui vai verificar se ele tem a chave do armazém
	for (var i = 0; i < array_length(global.itens); i++){
		// Aqui é quando tiver a chave, acontecer essa ação aí
		if (global.itens[i] = "chaveArmazem"){
			global.xNext = xTeleport
			global.yNext = yTeleport
			fadeIn()
			if alarm[0] = -1{
				alarm[0] = 20
			}
		}
		else{
			show_message("Galego ou caio bota uma mensagem que precisa da chave")	
		}
	}

}
