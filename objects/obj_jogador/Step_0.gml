#region Movimentação e colisão (clique para abrir)

// Movimentação básica =================================================================================
// Movimento para os lados, pegando o valor da direção do personagem e multiplicando pela velocidade
// Exemplo: Jogador pressiona DIREITA, que retorna 1 e é subtraído por ESQUERDA, que não está pressionado,
// retornando 0, a subtração resulta em 1 e é multiplicado pela velocidade
if instance_exists(obj_transicao) exit

inputX = keyboard_check(keybinds.right) - keyboard_check(keybinds.left)

// Correr:
var correr = keyboard_check(keybinds.run)
	if inputX != 0 and correr{
		global.energia -= 0.6
	}
	else{
		global.energia += 0.3
	}
	if correr{
		var runValue = global.maxSpeedRun
	}
	else{
		var runValue = global.maxSpeed
	}
if keyboard_check_pressed(keybinds.left){
	escalaX = -1
}
else if keyboard_check_pressed (keybinds.right){
	escalaX = 1
}

if inputX != 0{
	global.currentSpeed = lerp(global.currentSpeed,runValue,0.8)
	var moveSpeed = inputX * global.currentSpeed
	if inputX != 0 and place_meeting(x,y+1,obj_colisor) and global.currentSpeed !=0
	{
		tempopisadas --
		if tempopisadas <= 0 
		{
			audio_play_sound(snd_walk,1,0)
			audio_sound_pitch(snd_walk,random_range(0.8,1.2))
			tempopisadas = 16
		}
	}
	if !place_meeting(x,y+1,obj_colisor)
	{
		tempopisadas = 1
	}
}

else{
	tempopisadas = 1
	global.currentSpeed = lerp(global.currentSpeed,0,0.2)
	moveSpeed = global.currentSpeed * escalaX
	if global.energia <100
	{
		global.energia += 0.2
	}
}
// Colisão horizontal + vertical =========================================================================
// Verifica se há colisões e trava a velocidade nesses casos. A colisão vertical é um pouco mais 
// elaborada que a condição horizontal devido a gravidade, mas nada demais

 if place_meeting(x + moveSpeed, y, obj_colisor){
        while (!place_meeting(x + sign(moveSpeed), y, obj_colisor)){
            x += sign(moveSpeed)
        }
		moveSpeed = 0
    }

// Movimento definitivo
x += moveSpeed

#endregion
	
#region Pulo, gravidade e colisão vertical (clique para abrir)

// Pulo =================================================================================
// Basicamente aqui é feita a definição da velocidade vertical quando aperta o botão de pulo.
// Tem umas frescurinha tipo o coyote time e a multiplicação da velocidade de queda, junto com
// aquela mecanica que o pulo é mais alto conforme você segura o botão

if keyboard_check_pressed(keybinds.jump) and coyoteTime > 0{
	escalaX = 0.5 * sign(escalaX)
	escalaY = 1.5 * sign(escalaY)
	jumpSpeed = alturaMaxPulo
    coyoteTime = 0    
}

if place_meeting(x, y+1, obj_colisor){
    coyoteTime = 10
}
else{
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
        scr_explosaoParticula(x,y+sprite_height/2,depth+1,180,jumpSpeed,spr_particulaGrama,10,0.03,0.1)
    }

    jumpSpeed = 0
}


// Movimento definitivo
y += jumpSpeed
	
// Limitando a velocidade de queda, usando o número fixo porque aqui é meio que o único
// lugar que a gente manuseia a velocidade da queda :p
if jumpSpeed > 30{
	jumpSpeed = 30
}

#endregion

#region Efeitos visuais (clique para abrir)

// Partículas ===================================================================================
// Aqui é feita a geração de partículas. O valor do sprite da partícula varia de room pra room

// Particulas ao caminhar
particleTimer--
if particleTimer <= 0{
	if jumpSpeed = 0 and inputX != 0 and seatrepou = false{
		scr_criarParticula(x,y+sprite_height/2,depth+1,spr_particulaGrama,random_range(180,90)*inputX,2*inputX,0.06)
	}
	
	particleTimer = 0.5
}
fade_timer --
if keyboard_check(keybinds.run)
{
	if fade_timer <= 0
	{
		fade_timer = fade_time
		part_particles_create(obj_particleSetup.particleSystem,x,y,obj_particleSetup.particleType,1)
	}
}
alpha = lerp(alpha,0,0.1)

#endregion

#region Wallslide
var wall = place_meeting(x + sign(jumpSpeed), y, obj_colisor)
if wall{
	if (jumpSpeed > 1) and !seatrepou{
		particleTimer--
		if particleTimer <= 0{
			if jumpSpeed >0{
				scr_criarParticula(x+sprite_width/2,y,depth+1,spr_particulaGrama,random_range(180,90)*inputX,2*inputX,0.06)
			}
	
			particleTimer = 3
}
		jumpSpeed = 3
		// Resumidamente, quando entra em contato com a parede, o seu y fica um pouco menor, logo "deslizando" na parede
	}
}
var wall2 = place_meeting(x - sign(jumpSpeed), y, obj_colisor)
if wall2{
	if (jumpSpeed > 1) and !seatrepou{
		particleTimer--
		if particleTimer <= 0{
			if jumpSpeed >0{
				scr_criarParticula(x-32,y+32,depth+1,spr_particulaGrama,random_range(180,90)*inputX,2*inputX,0.06)
			}
	
			particleTimer = 5
}
		jumpSpeed = 3
		// Resumidamente, quando entra em contato com a parede, o seu y fica um pouco menor, logo "deslizando" na parede
	}
}
#endregion

#region Trepadeira
if place_meeting(x,y,obj_trepadeira)
{
	seatrepou = true
}
if !place_meeting(x,y,obj_trepadeira)
{
	seatrepou = false
}
if seatrepou = true
{
	jumpSpeed = 0
	gravidade = 0
	if keyboard_check(keybinds.up) and !place_meeting(x,y-5,obj_colisor)
	{
		y-= 5
	}
	if keyboard_check(keybinds.down) and !place_meeting(x,y+5,obj_colisor)
	{
		y+= 5
	}
	if keyboard_check(keybinds.right) and !place_meeting(x+5,y,obj_colisor)
	{
		x-= 4
	}
	if keyboard_check(keybinds.left) and !place_meeting(x-5,y,obj_colisor)
	{
		x+= 4
	}
}
else
{
	gravidade = 0.6
}
//quando entra em contato com a trepadeira, o jogador pode mover-se livremente, mas
//o pulo e a gravidade são desligados, dando o efeito de "escalada"

#endregion

#region Ataque
if keyboard_check_pressed(keybinds.attack)
{
	ds_list_clear(inimigos_atingidos)
	image_index = 0
	estado = "atacando"
}
if estado = "atacando"
{
	//criando uma lista para chcar os inimigos atingidos em cada frame
	var inimigos_na_hitbox = ds_list_create()
	//colocar o ID dos inimigos atingidos dentro da lista
	var inimigos = instance_place_list(x,y,obj_inimigo,inimigos_na_hitbox,false)
	
	//se tiver algum inimigo atingido
	if (inimigos) > 0
	{
		//usar o loop para checar o ID de cada inimigo atingido
		for (var i = 0; i < inimigos; i++)
		{
			//o ID de cada inimigo
			var inimigoID = inimigos_na_hitbox[| i]
			
			//comparar o ID do inimigo na lista local com a lista de inimigos atingidos do jogador
			if (ds_list_find_index(inimigos_atingidos,inimigoID)) == -1
			{
				ds_list_add(inimigos_atingidos,inimigoID)
				//o que será feito com o inimigo
				with (inimigoID)
				{
					alpha = 1
					currenthealth -= random_range(15,20)
					obj_controladorDoJogo.shakevalue = 1
					travar_tela(40)
				}
			}
		}
	}ds_list_destroy(inimigos_na_hitbox)
}

//apenas mantendo a fome dentre um eixo de 1 a 4
if global.fome < 1{
global.fome = 1	
}

if global.fome > 4{
	global.fome = 4
}
//Mudanças na Fome dependendo da vida:
#region
if global.fome = 2{
	global.maxSpeed = 8
	global.maxSpeedRun = 10
	alturaMaxPulo = -11
}

else if global.fome = 1{
	global.maxSpeed = 5
	global.maxSpeedRun = 7
	alturaMaxPulo = -7
}

else{
	global.maxSpeed = 10
	global.maxSpeedRun = 13
	alturaMaxPulo = -13
}


#endregion

switch estado
{
	case "parado":
	sprite_index = spr_placeholderArrow
	mask_index = spr_placeholder
	break

	case "atacando":
	sprite_index = spr_placeholder_atk
	mask_index = spr_placeholder_atk_hb
	break
}

escalaX = lerp(escalaX,sign(escalaX),0.3)
escalaY = lerp(escalaY,sign(escalaY),0.3)


#endregion

#region Limitações
global.energia = clamp(global.energia,0,global.maxEnergia)
global.life = clamp(global.life,0,global.maxLife)
#endregion

