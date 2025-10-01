// São as opções do menu e as funções de cada um
#region
opcao1 =
{
    texto : "Novo jogo",
    
    funcao : function()
    {
		room_goto(rm_introducao)
		
    },
}

opcao2 =
{
    texto : "Carregar",
    
    funcao : function()
    {
        show_message("Perai não aprendi a fazer isso ainda")    
    },
}

opcao3 =
{
    texto : "Opções",
    
    funcao : function()
    {
		
		room_goto(rm_opcoes)
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
