var gui_w = display_get_gui_width()
var gui_h = display_get_gui_height()

if global.pausemenu{
	draw_set_color(c_black)
	draw_rectangle(0, 0, gui_w, gui_h, false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_font(fnt_menu)
	draw_text(gui_w/2, gui_h/2, "pause")
}