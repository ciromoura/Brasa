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
	run: ord("X"),
	interact: ord("E")
}

scr_setBinds(keybinds)

// Outras variáveis de controle global ============================================================================

global.pause = true
global.shadercor = make_color_rgb(59, 212, 67)


if (!layer_exists("layer_effect")) {
    effect_layer = layer_create(-1000, "layer_effect"); 
}
