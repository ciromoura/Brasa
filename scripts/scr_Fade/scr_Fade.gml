function fadeIn(){
	global.pause = true
	obj_camera.alpha_lerp = 1
}

function fadeOut(){
	global.pause = false
	obj_camera.alpha_lerp = 0
}