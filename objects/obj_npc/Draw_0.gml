draw_self()
if instance_exists(obj_jogador)
{
	if distance_to_object(obj_jogador) < obj_jogador.rangeint and obj_jogador.falando = false and isnarrador = false
	{
		draw_sprite(spr_interacao,0,x,y-100)
	}
}