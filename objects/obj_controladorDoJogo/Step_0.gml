// Câmera =====================================================================
// Esse trecho é dedicado a fazer a câmera seguir o jogador invés de ficar
// estática

if global.cameraEstatica = false and instance_exists(obj_jogador){
	x = lerp(x,alvoCam.x,0.1)
	y = lerp(y,alvoCam.y-alturaCam/4,0.1)
	camera_set_view_pos(view_camera[0],x-larguraCam/2,y-alturaCam/2)
}