// Guarda o índice anterior
prev_atual = atual;

// Subir ou descer
if keyboard_check_pressed(vk_down){
	atual += 1
}
if keyboard_check_pressed(vk_up){
	atual -= 1
}
// Mantém dentro do tamanho do menu
atual = clamp(atual, 0, array_length(menu) - 1)

// Se mudou de opção, o bixo vai e toca som e dá o "pulo"
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up)) {
    audio_play_sound(snd_botao, 1, false);
    scale = 1.3
}

// Faz o tamanho voltar suavemente ao normal
scale = lerp(scale, 1, 0.15);

// Confirmar a opção atual
if (keyboard_check_pressed(ord("Z"))){
    if (array_length(menu) > 0 && atual >= 0 && atual < array_length(menu)){
        menu[atual].funcao()
    }
}
