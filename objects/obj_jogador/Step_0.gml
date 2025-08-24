#region Movimentação e colisão (clique para abrir)
// Movimentação básica =================================================================================
inputX = keyboard_check(keybinds.right) - keyboard_check(keybinds.left)
if inputX != 0{
	image_xscale = inputX
	global.currentSpeed = lerp(global.currentSpeed,global.maxSpeed,0.8)
	var moveSpeed = inputX * global.currentSpeed
} else{
	global.currentSpeed = lerp(global.currentSpeed,0,0.2)
	moveSpeed = global.currentSpeed * image_xscale
}

// Colisão horizontal + vertical =========================================================================
if place_meeting(x + moveSpeed, y, obj_colisor){
    while (!place_meeting(x + sign(moveSpeed), y, obj_colisor)){
        x += sign(moveSpeed)
    }
	moveSpeed = 0
}

// Movimento definitivo
if !global.pause{
	x += moveSpeed
}
#endregion

#region Pulo, gravidade e colisão vertical (clique para abrir)
// Pulo =================================================================================
if keyboard_check_pressed(keybinds.jump) and coyoteTime > 0{
	jumpSpeed = alturaMaxPulo
    coyoteTime = 0
}

if place_meeting(x, y+1, obj_colisor){
    coyoteTime = 10
} else{
    jumpSpeed += gravidade
	coyoteTime--
}

if keyboard_check_released(keybinds.jump) and jumpSpeed < 0{
	jumpSpeed *= 0.4
	coyoteTime = 0
}

// Colisão vertical (ajustada com partículas)
if place_meeting(x, y + jumpSpeed, obj_colisor){
    while (!place_meeting(x, y + sign(jumpSpeed), obj_colisor)){
        y += sign(jumpSpeed)
    }

    // Partículas ao aterrissar, se estava caindo (jumpSpeed positivo)
    if jumpSpeed > 0{
		if jumpSpeed > 12{
			instance_create_depth(x,y+sprite_height/2,depth-100,obj_smoke,{sprite_index: spr_jumpAnim, isParticle: false})
		}
        scr_explosaoParticula(x,y+sprite_height/2,depth+1,180,jumpSpeed,spr_particulaGrama,10,0.03,0.1)
    }

    jumpSpeed = 0
}

// Movimento definitivo
if !global.pause{
	y += jumpSpeed * jumpSpeedMod
}

// Limitando a velocidade de queda
if jumpSpeed > 30{
	jumpSpeed = 30
}
#endregion

#region Efeitos visuais (clique para abrir)
// Partículas ===================================================================================
particleTimer--
if particleTimer <= 0{
	if jumpSpeed = 0 and inputX != 0{
		scr_criarParticula(x,y+sprite_height/2,depth+1,spr_particulaGrama,random_range(180,90)*inputX,2*inputX,0.06)
	}
	particleTimer = 0.5
}
#endregion
