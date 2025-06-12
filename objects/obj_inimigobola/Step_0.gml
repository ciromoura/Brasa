if estado = "normal"
{
	if dir = 0
	{
		distance_p += speed
		if distance_p >= distance_t
		{
			direction = 180
			distance_p = 0
			dir = 1
			image_xscale = -1
		}
	}
	if dir = 1
	{
		distance_p += speed
		if distance_p >= distance_t
		{
			direction = 0
			distance_p = 0
			dir = 0
			image_xscale = 1
		}
	}
}
if obj_jogador.estado = "atacando" and place_meeting(x,y,obj_jogador)
{
	estado = "seguindo"
}

if estado = "seguindo"
{
	move_towards_point(obj_jogador.x,obj_colisor_inimigo.y,speed)
	if place_meeting(x,y,obj_colisor_inimigo)
	{
		estado = "normal"
		direction = 180
	}
}

	















if currenthealth = 0
{
	instance_destroy()
}
	