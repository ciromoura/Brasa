// Câmera =====================================================================
// Esse trecho é dedicado a fazer a câmera seguir o jogador invés de ficar
// estática

if global.cameraEstatica = false and instance_exists(obj_jogador){
	x = lerp(x,alvoCam.x,0.1)
	y = lerp(y,alvoCam.y-alturaCam/4,0.1)
	camera_set_view_pos(view_camera[0],x-larguraCam/2,y-alturaCam/2)
}

// Sistema para aumentar o pitch do som das moedas e resetar caso passe algum tempo sem pegar
if (global.tempo_moeda_contador >0)
{
	global.tempo_moeda_contador -=1
	if (global.tempo_moeda_contador <=0)
	{
		global.moeda_pitch = 1.0
	}
}