// Debug mode =====================================================================================
// Essa variável é usada em vários lugares como um modo de debugar o jogo, Obviamente vai estar desligada 
// no jogo final, mas será útil pra testes aqui

global.debugMode = true

// Definição de controles ===================================================================================
// Array de teclas que são armazenadas em variáveis que por sua vez são armazenadas em uma struct. Pode ser alterado 
// mas por padrão segue os valores dentro do codigo abaixo

var keybinds = {
	right: vk_right,
	left: vk_left,
	down: vk_down,
	up: vk_up,
	jump: ord("Z"),
	run: vk_shift,
	attack: ord("X"),
	dash: ord("C"),
	menu: vk_escape
}

scr_setBinds(keybinds)

// Outrás variáveis =======================================================
// Alguns exemplos para cá são a câmera ser estática ou não e outras coisas

larguraCam = camera_get_view_width(view_camera[0])
alturaCam = camera_get_view_height(view_camera[0])
alvoCam = obj_jogador
global.cameraEstatica = false
shakepower = 10
shakevalue = 0

global.moeda_pitch = 1.0
global.tempo_moeda_max = 60
global.tempo_moeda_contador = 0