// Função get dos controles ==============================================================================
// Essa função será usada sempre que for necessário pegar os controles do jogo, para não ter que puxar o
// arquivo, lê-lo até a linha desejada e fechar sempre que for pegar uma tecla específica dos controles

function scr_getBinds(){
	var arquivoControles = file_text_open_read("Game options/keybinds.json")
	var jsonStr = file_text_read_string(arquivoControles)
	file_text_close(arquivoControles)
	return json_parse(jsonStr)
}

// Função set dos controles ==============================================================================
// Essa função será usada sempre que for necessário setar os controles do jogo, usada em casos específicos
// como ao inicializar o jogo ou mudar as configurações

function scr_setBinds(keybinds){
    if (!file_exists("Game options/keybinds.json")){
        var arquivoControles = file_text_open_write(path);
        file_text_write_string(arquivoControles, json_stringify(keybinds));
        file_text_close(arquivoControles);
    }
}
