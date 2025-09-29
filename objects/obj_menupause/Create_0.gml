// São as opções do menu e as funções de cada um
#region
opcao1 =
{
    texto : "Tela inicial",
    
    funcao : function()
    {
		room_goto(rm_menu)
		
    },
}

opcao2 =
{
    texto : "Salvar",
    
    funcao : function()
    {
        show_message("Jogo salvo (sqnkkkk)")
    },
}

opcao3 =
{
    texto : "Fechar jogo",
    
    funcao : function()
    {
        game_end() 
    },
}

opcao4 =
{
    texto : "Continuar",
    
    funcao : function()
    {
		
		instance_destroy()
    },
}
#endregion

menu = [opcao1, opcao2, opcao3, opcao4]
atual = 0
