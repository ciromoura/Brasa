// São as opções do menu e as funções de cada um
#region
opcao1 =
{
    texto : "BRASA - Jogar",
    
    funcao : function()
    {
        room_goto_next()    
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
    texto : "Conquistas",
    
    funcao : function()
    {
        show_message("Aqui vai aparecer as conquistas")    
    },
}
#endregion

menu = [opcao1, opcao2, opcao3, opcao4]
atual = 0
// A margem é o ponto horizontal máximo que ele vai, começando do 0
margem = 0