if isParticle = true{
	image_xscale = random_range(0.8,1.2)
	image_yscale = image_xscale
	
	speed = lerp(speed,0,velocidadeLerp)
	
	image_alpha -= fadeSpeed
	
	if image_alpha = 0{
		instance_destroy()
	}
}
