// São as opções do menu e as funções de cada um
#region
opcao1 = {
    texto: "Volume",

    funcao: function() {
        
    }
}

opcao2 = {
    texto: "Fullscreen",

    funcao: function() {
        var _isFullscreen = window_get_fullscreen()
        window_set_fullscreen(!_isFullscreen)
    }
} 

opcao3 =
{
    texto : "Controles",
    
    funcao : function()
    {
        show_message("Controles")    
    },
}

opcao4 =
{
    texto : "Voltar",
    
    funcao : function()
    {
        room_goto(rm_menu)  
    },
}


#endregion

menu = [opcao1, opcao2, opcao3, opcao4]
atual = 0
