global.pausemenu = false

#region
opcao1 = {
	texto : "Retomar",
	funcao : function() {
		global.pausemenu = false
	},
}

opcao2 = {
	texto : "Sair ao menu",
	funcao : function() {
		room_goto(rm_menu)
		global.pausemenu = false
	},
}

opcao3 = {
	texto : "Opções",
	funcao : function() {
		show_message("opções do jogo")
	},
}

opcao4 = {
	texto : "Fechar jogo",
	funcao : function() {
		game_end()
	},
}
#endregion

menu = [opcao1, opcao2, opcao3, opcao4]
atual = 0
prev_atual = -1
scale = 1
