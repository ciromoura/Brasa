// Câmera =====================================================================
// Esse trecho é dedicado a fazer a câmera seguir o jogador invés de ficar
// estática

if global.cameraEstatica = false and instance_exists(obj_jogador){
	x = lerp(x,alvoCam.x,0.1)
	y = lerp(y,alvoCam.y-alturaCam/4,0.1)
	camera_set_view_pos(view_camera[0],x-larguraCam/2,y-alturaCam/2)
	
	var shake = power(shakevalue,2)*shakepower
	x += random_range(-shake,shake)
	y += random_range(-shake,shake)
	camera_set_view_angle(view_camera[0],random_range(-shake,shake) * 0.5)

	if shakevalue >0 
	{
		shakevalue -=0.1
	}
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

//Aqui é quando o boneco está próximo da morte, onde ele fica com a tela borrada.
#region
if global.life < 15{
	layer_set_visible(layer_get_id("lay_efeitodesfoque"),true)
}

else{
	layer_set_visible(layer_get_id("lay_efeitodesfoque"),false)
}
#endregion
