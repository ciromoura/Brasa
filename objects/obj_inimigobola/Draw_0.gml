draw_self()
draw_healthbar(x-30,y-40,x+30,y-50,currenthealth,c_black,c_red,c_green,0,true,true)
//barra de vida simples

if alpha >0
{
	gpu_set_fog(true,c_red,0,0)

	draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_red,alpha)

	gpu_set_fog(false,c_red,0,0)
}
