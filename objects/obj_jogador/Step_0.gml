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
		repeat(3){
			scr_criarParticula(x-(inputX*-20),(y+sprite_height/2)+10,depth+1,spr_particulaGrama,random_range(180,90)*inputX,2*inputX,0.06)
		}
	}
	particleTimer = 0.5
}
#endregion

#region Wallside (clique para abrir)
var walldireita = place_meeting(x + sign(jumpSpeed), y, obj_colisor) //Mesma lógica da colisão.
var wallesquerda = place_meeting(x - sign(jumpSpeed), y, obj_colisor) //Mesma lógica da colisão.

// Aqui verifica a posição do jogador para a criação das partículas.
if image_xscale = 1{
	var posicaoparticula = x+sprite_width/2
}
else{
	var posicaoparticula = x+sprite_width/2+7
}

// Código especificamente do wallslide:
if walldireita or wallesquerda{
	if (jumpSpeed > 1) and !wallsliding{
		particleTimer--
		if particleTimer <= 0{
			if jumpSpeed >0{
				repeat(3){
					scr_criarParticula(posicaoparticula,y-sprite_height/3,depth+1,spr_particulaGrama,random_range(180,90),2,0.06) // Criação da partícula
					scr_criarParticula(posicaoparticula,(y-sprite_height/3)+200,depth+1,spr_particulaGrama,random_range(180,90),2,0.06) // Criação da partícula
				}
			}
			particleTimer = 3
}
		jumpSpeed = 3
		// Resumidamente, quando entra em contato com a parede, o seu y fica um pouco menor, logo "deslizando" na parede
	}
}

//WallJump
if walldireita or wallesquerda{
	if keyboard_check_pressed(keybinds.jump){
		instance_create_depth((x+(sprite_width/2))*image_xscale,y-sprite_height/3,depth-9999,obj_smoke,{isParticle: false, sprite_index: spr_wallJumpEffect})
		jumpSpeed = alturaMaxPulo
	    global.currentSpeed -= 25
	}
}

#endregion

#region Interação
//Aqui está sendo criado o sprite da interaçao caso o jogador esteja perto
//e destruido caso interaja ou esteja longe
var npc = instance_nearest(x,y,obj_npc)

if distance_to_object(npc) < rangeint and falando = false
{
	instance_create_depth(npc.x - 40,npc.y-140,-1,obj_interacao)
}

if distance_to_object(npc) > rangeint
{
	instance_destroy(obj_interacao)
}


//Aqui cria o objeto do dialogo caso o jogador interaja
if distance_to_object(obj_npc) < rangeint and keyboard_check_pressed(ord("E")) and falando == false
{
	var _npc = instance_nearest(x,y,obj_npc)
	var _dialogo = instance_create_layer(x,y,"Instances",obj_dialogo)
	_dialogo.npc_nome = _npc.nome
	falando = true
	instance_destroy(obj_interacao)
}
#endregion

