#region Movimentação e colisão (clique para abrir)

// Movimentação básica =================================================================================
// Movimento para os lados, pegando o valor da direção do personagem e multiplicando pela velocidade
// Exemplo: Jogador pressiona DIREITA, que retorna 1 e é subtraído por ESQUERDA, que não está pressionado,
// retornando 0, a subtração resulta em 1 e é multiplicado pela velocidade
if instance_exists(obj_transicao) exit

inputX = keyboard_check(keybinds.right) - keyboard_check(keybinds.left)

// Correr:
var correr = keyboard_check(keybinds.run)
	if correr{
		var runValue = global.maxSpeedRun
	}
	else{
		var runValue = global.maxSpeed
	}

if inputX != 0{
	image_xscale = inputX
	global.currentSpeed = lerp(global.currentSpeed,runValue,0.8)
	var moveSpeed = inputX * global.currentSpeed
}
else{
	global.currentSpeed = lerp(global.currentSpeed,0,0.2)
	moveSpeed = global.currentSpeed * image_xscale
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
	if jumpSpeed = 0 and inputX != 0{
		scr_criarParticula(x,y+sprite_height/2,depth+1,spr_particulaGrama,random_range(180,90)*inputX,2*inputX,0.06)
	}
	
	particleTimer = 0.5
}


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
	
			particleTimer = 5
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
				scr_criarParticula(x-32,y,depth+1,spr_particulaGrama,random_range(180,90)*inputX,2*inputX,0.06)
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
	if keyboard_check(keybinds.up)
	{
		y-= 5
	}
	if keyboard_check(keybinds.down) and !place_meeting(x,y+5,obj_colisor)
	{
		y+= 5
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
if mouse_check_button_pressed(mb_left)
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
					currenthealth -= random_range(15,20)
					obj_controladorDoJogo.shakevalue = 1
				}
			}
		}
	}ds_list_destroy(inimigos_na_hitbox)
}

switch estado
{
	case "parado":
	sprite_index = spr_placeholderArrow
	mask_index = spr_placeholderArrow
	break

	case "atacando":
	sprite_index = spr_placeholder_atk
	mask_index = spr_placeholder_atk_hb
	break
}




#endregion

