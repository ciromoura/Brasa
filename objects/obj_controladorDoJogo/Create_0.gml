// Definição de controles ===================================================================================
// Array de teclas que são armazenadas em variáveis que por sua vez são armazenadas em uma struct. Pode ser alterado 
// mas por padrão segue os valores dentro do codigo abaixo

keybinds = {
	right: vk_right,
	left: vk_left,
	down: vk_down,
	up: vk_up,
	jump: ord("Z"),
	run: ord("X")
}
if !file_exists("Game options/keybinds.json"){
	var arquivoControles = file_text_open_write("Game options/keybinds.json")
	file_text_write_string(arquivoControles,json_stringify(keybinds))
	file_text_close(arquivoControles)
}
