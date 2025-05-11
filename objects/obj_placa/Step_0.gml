 if point_distance(x,y,obj_jogador.x,obj_jogador.y) < rangemin and criou = false
{
	instance_create_layer(x, y -75, "lay_assetsAcima", obj_fala, {sprite_index: spr_fala, image_xscale:0.8,image_yscale:0.8})
	alarm[0] = 2
	caractere = 0
	criou = true
}

if distance_to_object(obj_jogador) > rangemin
{
	criou = false
	instance_destroy(obj_fala)
}

