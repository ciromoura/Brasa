if distance_to_object(obj_jogador) <= obj_jogador.rangeint and keyboard_check_pressed(keybinds.interact)
{
	global.xNext = xTeleport
	global.yNext = yTeleport
	fadeIn()
	if alarm[0] = -1{
		alarm[0] = 20
	}
}