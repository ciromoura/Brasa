x = lerp(x,304,0.01)
if cutscene_end = false{
	obj_jogador.x = x
}
else{
	if global.pause = true{
		global.pause = false
		unpause = true
	}
}