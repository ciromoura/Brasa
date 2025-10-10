// Aqui é justamente para subir ou descer o botão escolhido do menu

if (keyboard_check_pressed(vk_down)){
    atual++
	audio_play_sound(snd_botao, 1000, 0)
}
if (keyboard_check_pressed(vk_up)){
    atual--
	audio_play_sound(snd_botao, 1000, 0)
}

if (keyboard_check_pressed(ord("Z"))){
    menu[atual].funcao()
}

// é justamente para ficar dentro do tamanho do menu. (-1 justamente pq o array pega o tamanho do menu e ele começa a contar do 0)
atual = clamp(atual, 0, array_length(menu) - 1)
