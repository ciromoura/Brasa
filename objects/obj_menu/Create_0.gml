// São as opções do menu e as funções de cada um
#region
opcao1 =
{
    texto : "Jogar",
    
    funcao : function()
    {
		room_goto(rm_introducao)
		
    },
}

opcao2 =
{
    texto : "Sair",
    
    funcao : function()
    {
        game_end()
    },
}

opcao3 =
{
    texto : "Carregar",
    
    funcao : function()
    {
        show_message("Carregar o jogo")    
    },
}

opcao4 =
{
    texto : "Options",
    
    funcao : function()
    {
		
		room_goto(rm_opcoes)
    },
}
#endregion

menu = [opcao1, opcao2, opcao3, opcao4]
atual = 0
