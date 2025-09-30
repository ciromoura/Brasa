global.pausemenu = false

// São as opções do menu e as funções de cada um
#region
opcao1 =
{
    texto : "Voltar",
    
    funcao : function()
    {
		global.pausemenu = false
    },
}

opcao2 =
{
    texto : "Menu Principal",
    
    funcao : function()
    {
        room_goto(rm_menu)
		global.pausemenu = false
    },
}

opcao3 =
{
    texto : "Options",
    
    funcao : function()
    {
        show_message("opções do jogo")   
    },
}

opcao4 =
{
    texto : "Sair",
    
    funcao : function()
    {
        game_end()
    },
}


#endregion

menu = [opcao1, opcao2, opcao3, opcao4]
atual = 0
