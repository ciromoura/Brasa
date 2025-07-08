global.money++
global.moeda_pitch +=0.1
if (global.moeda_pitch > 2.0) global.moeda_pitch = 2.0
audio_play_sound(snd_coin,0,false)
audio_sound_pitch(snd_coin,global.moeda_pitch)
global.tempo_moeda_contador = global.tempo_moeda_max
scr_explosaoParticula(x,y,depth+1,360,20,spr_particulaBrilho,15,0.05,0.2)
//aumenta a quantidade do dinheiro quando é destruído
//aumenta o pitch quando coletada consecutivamente