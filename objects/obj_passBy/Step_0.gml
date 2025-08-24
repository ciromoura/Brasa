// Objeto de pass-by =================================================================
// Basicamente isso é um objeto que rotaciona levemente quando o jogador passa por ele pra dar
// a sensação que o jogador arrastou ele brevemente ao mover

if place_meeting(x,y,obj_jogador) and obj_jogador.inputX != 0{
	image_angle = lerp(image_angle,obj_jogador.image_xscale * 15,0.05)
}
else{
	image_angle = lerp(image_angle,lerpAngle,0.05)
}