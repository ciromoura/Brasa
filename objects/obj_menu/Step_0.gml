// Guarda o índice anterior
var prev_atual = atual

// Subir ou descer
if (keyboard_check_pressed(vk_down)){
	atual += 1
}
if (keyboard_check_pressed(vk_up)){
	atual -= 1
}

// Mantém dentro do tamanho do menu
atual = clamp(atual, 0, array_length(menu) - 1);

// Toca som apenas se a opção realmente mudou
if atual != prev_atual{
    audio_play_sound(snd_botao, 1, false)
}

// Confirmar a opção atual
if (keyboard_check_pressed(ord("Z"))) {
    if (array_length(menu) > 0 && atual >= 0 && atual < array_length(menu)) {
        menu[atual].funcao()
    }
}
