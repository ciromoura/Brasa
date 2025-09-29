if room != rm_menu{
	if keyboard_check_pressed(vk_escape){
		global.pausemenu = !global.pausemenu
	}

	if global.pausemenu = true{
		global.pause = true
	}
	else{
		global.pause = false	
	}
}
