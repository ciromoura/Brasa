// Efeitos de partícula ======================================================================================
// O Game Maker possui partículas próprias mas eu não sei usar então a gente faz manual :p
// Aqui vão ser funções que criam partículas de diferentes formas, de forma customizável

function scr_criarParticula(xx,yy,dept,spriteParticula,direcao,velocidade,velocidadeFade){
	instance_create_depth(xx,yy,dept,obj_smoke,{
		isParticle: true,
		sprite_index: spriteParticula,
		image_index: irandom_range(0,sprite_get_number(spriteParticula)),
		speed: velocidade,
		direction: direcao,
		fadeSpeed: velocidadeFade
	})
}

// Partículas em explosão ===================================================================================
// Se não deu pra entender, a função anterior é uma única particula, essa aqui é um conjunto de partículas
// em explosão radial

function scr_explosaoParticula(xx,yy,dept,arc,quantidade,spriteParticula,velocidade,velocidadeFade,velocidadeLerpa){
	repeat(quantidade){
			instance_create_depth(xx,yy,dept,obj_smoke,{
			isParticle: true,
			sprite_index: spriteParticula,
			image_index: irandom_range(0,sprite_get_number(spriteParticula)),
			speed: velocidade,
			direction: random_range(0,arc),
			fadeSpeed: velocidadeFade,
			velocidadeLerp: velocidadeLerpa
		})
	}
}