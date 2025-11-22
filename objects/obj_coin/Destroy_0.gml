if bolsadopatrao = false{
	global.money = global.money + 1
}
else{
	global.money = global.money + 2	
}
scr_explosaoParticula(x,y,depth,360,20,spr_particulaMoeda,10,0.03,0.1)
audio_play_sound(snd_moeda,0,0)