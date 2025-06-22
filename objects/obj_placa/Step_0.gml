 if distance_to_object(obj_jogador) < rangemin and criou = false and txtembaixo = false
{
	balao = instance_create_layer(x, y -75, "lay_assetsAcima", obj_fala, {sprite_index: spr_fala, image_xscale:0.8,image_yscale:0.8})
	alarm[0] = 2
	caractere = 0
	criou = true
}
//checa se o jogador está perto e se o texto deve ser gerado em cima ou embaixo
//cria uma instância contendo o texto que será exibido

 if distance_to_object(obj_jogador) < rangemin and criou = false and txtembaixo = true
{
	balao = instance_create_layer(x, y +400, "lay_assetsAcima", obj_fala, {sprite_index: spr_fala, image_xscale:0.8,image_yscale:0.8})
	alarm[0] = 2
	caractere = 0
	criou = true
}

if distance_to_object(obj_jogador) > rangemin and criou
{
	if instance_exists(balao){
		instance_destroy(balao)
	}
	criou = false
}
//destrói a instância caso o jogador se afaste
