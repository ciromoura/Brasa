draw_set_color(c_black)
draw_set_alpha(alpha)
draw_rectangle(0,0,room_width,room_height,false)

if alpha <= 0.2
{
	draw_set_color(-1)
	draw_set_alpha(1)
}
