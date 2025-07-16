#region Dano no jogador

//Só consegue atingir quando o jogador não estiver atacando
//Após atingido, o jogador leva alguns frames para poder ser atacado de novo, tempo definido pela variável "cooldown".
if obj_jogador.estado != "atacando" and obj_jogador.podeseratacado = true
{
	global.life -= 10
	obj_jogador.podeseratacado = false
	obj_jogador.alarm[0] = obj_jogador.tempoimune
	obj_jogador.alpha = 1
}

#endregion