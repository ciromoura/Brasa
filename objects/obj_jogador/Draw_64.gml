if room != rm_menu and room != rm_salaInicial{
	draw_healthbar(20, 738, 320, 748, (global.currentEnergy/global.maxEnergy)*100, c_black, c_red, c_blue, 0, true, true)
}

var sx = 0
var sy = 0

if room != rm_menu and room != rm_salaInicial{
	if (global.moedaTreme > 0) {
	    sx = irandom_range(-7, 7)
	    sy = irandom_range(-7, 7)
	    global.moedaTreme -= 1
	}

	draw_sprite(spr_coin, 0, 55 + sx, 688 + sy)
	draw_text(85, 660, "x " + string(global.money))
}
