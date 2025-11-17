if place_meeting(x,y,obj_jogador)
{
	obj_jogador.jumps = 1
	obj_jogador.gravidade = 0.1
	obj_jogador.alturaMaxPulo = -10
	global.maxSpeed = -9999999
	obj_jogador.jumpSpeed = obj_jogador.jumpSpeed*0.9
	
}

else
{
	obj_jogador.jumps = obj_jogador.jumps
	obj_jogador.gravidade = 0.6
	obj_jogador.alturaMaxPulo = -16
	global.maxSpeed = 10
	obj_jogador.jumpSpeed = obj_jogador.jumpSpeed
	
}