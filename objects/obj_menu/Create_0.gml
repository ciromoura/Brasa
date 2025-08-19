// São as opções do menu e as funções de cada um
#region
opcao1 =
{
    texto : "Jogar",
    
    funcao : function()
    {
		instance_create_layer(0,0,"Instances",obj_transicao)
		
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
    texto : "Opções",
    
    funcao : function()
    {
		
		room_goto(rm_opcoes)
    },
}
#endregion

menu = [opcao1, opcao2, opcao3, opcao4]
atual = 0
