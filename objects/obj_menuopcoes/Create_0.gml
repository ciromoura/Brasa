// São as opções do menu e as funções de cada um
#region
opcao1 = {
    texto: "Volume",

    funcao: function() {
        aumentar_volume()
    }
}

opcao2 = {
    texto: "Fullscreen",

    funcao: function() {
        var _isFullscreen = window_get_fullscreen();
        window_set_fullscreen(!_isFullscreen);
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

#endregion

menu = [opcao1, opcao2, opcao3]
atual = 0
// A margem é o ponto horizontal máximo que ele vai, começando do 0
margem = 0