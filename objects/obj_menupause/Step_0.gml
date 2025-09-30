if room != rm_menu{
	if keyboard_check_pressed(vk_escape){
		global.pausemenu = !global.pausemenu
	}

	if global.pausemenu = true{
		global.pause = true
	}
	else{
		global.pause = false	
	}
}

// Aqui é justamente para subir ou descer o botão escolhido do menu
if global.pausemenu{
	if (keyboard_check_pressed(vk_down)){
	    atual++
	}
	if (keyboard_check_pressed(vk_up)){
	    atual--
	}

	if (keyboard_check_pressed(ord("Z"))){
	    menu[atual].funcao()
	}
}
// é justamente para ficar dentro do tamanho do menu. (-1 justamente pq o array pega o tamanho do menu e ele começa a contar do 0)
atual = clamp(atual, 0, array_length(menu) - 1)
