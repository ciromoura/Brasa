function all_textos(){
	switch npc_nome
	{
		case "npc1":
		ds_grid_add_text("Já estava na hora de voltar, Raimundo. Ninguém demora tanto assim para fazer qualquer coisa que seja.",spr_placeholdernpc,1,"Seringueiro")
		ds_grid_add_text("Sossega, rapaz. Eu tô aqui a mais tempo que você. Sei o tempo que leva pra fazer cada coisa.",spr_jogadorParado,0,"Raimundo")
		ds_grid_add_text("...",spr_placeholdernpc,1,"Seringueiro")
		break
		
		case "npc2":
		ds_grid_add_text("Estamos sem ferramentas. A chuva da noite passada levou tudo porque algum lesado deixou elas jogadas por aí.",spr_placeholdernpc,1,"Seringueiro")
		ds_grid_add_text("Acho que o patrão quer falar alguma coisa com você.",spr_placeholdernpc,1,"Seringueiro")
		ds_grid_add_text("Oxe, e por que comigo?",spr_jogadorParado,0,"Raimundo")
		ds_grid_add_text("E quem sabe?",spr_placeholdernpc,1,"Seringueiro")
		break
		
		case "patrao":
		ds_grid_add_text("Bom ver você, Raimundão. Todo mundo tá precisando das ferramentas do armazém. Como você já é mais vivido, preciso que você vá lá.",spr_patraoMane,1,"Patrão Mané")
		ds_grid_add_text(".....",spr_jogadorParado,0,"Raimundo")
		ds_grid_add_text("Vai que eu mando um trabalhador desse e ele dá fim nas coisas por lá, né? Hahaha. Pegue, tá aqui a chave.",spr_patraoMane,1,"Patrão Mané")
		ds_grid_add_text("É, haha... Diabo.",spr_jogadorParado,0,"Raimundo")
		obj_patrao.interagiu = true
		ds_grid_add_text("Raimundo pegou a chave do armazém.",spr_particulaGrama,1,"Narrador")
		break
		
		case "npc4":
		ds_grid_add_text("O armazém fica subindo esse caminho aí. Mas só entra lá com a chave, o seringalista não dá a qualquer um não.",spr_placeholdernpc,1,"Seringueiro")
		ds_grid_add_text("Que grande honra ser uma pessoa de confiança, então.",spr_jogadorParado,0,"Raimundo")
		ds_grid_add_text("Ser de confiança? Com aquele cara lá? Prefiro fazer amizade com onça do que com dono de seringal.",spr_placeholdernpc,1,"Seringueiro")
		break
		
		case "narradorIntro":
		ds_grid_add_text("Floresta amazônica. 1899.\nOs seringais trabalham a todo vapor com a necessidade de mais e mais exportação de borracha, produzida através das árvores de latex.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("Dentre os trabalhadores machucados pela exploração, desnutrição e dívidas, Raimundo escreve cartas para sua família do nordeste:S",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("Seringal São Bernardo, margem do rio Acre: junho de 1899. \nEscrevo sob um céu de chumbo, com o cheiro de borracha queimada entranhado nas mãos. Hoje vi coisa que não contaria, se não fosse o medo de esquecer quem ainda sou.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("O seringal está inquieto. Firmino, o capataz, anda com os olhos arregalados e o revólver à mostra. Fala em 'gente de fora' avançando pelo rio, em soldados de uniforme azul-turquesa fincando bandeiras em barrancos que eram nossos.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("nossos.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("Patrão Mané reúne os homens no barracão: 'Quem defender o talhadão ganha redução na dívida!'. Mas ninguém acredita. A dívida é como o igarapé sem fundo — quanto mais você tira água, mais lama sobe.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("Foi numa tarde de chuva miúda que Cabo Estiliano apareceu.",spr_jogadorParado,1,"???")
		ds_grid_add_text("Encontrei ele encolhido debaixo de um pau-d’arco, a farda boliviana rasgada e ensopada de sangue, não de ferimento, mas do látex que escorria das seringueiras.",spr_jogadorParado,1,"???")
		ds_grid_add_text("Tinha os olhos amendoados dos Andes e falava um português cortado, como facão em cipó duro:",spr_jogadorParado,1,"???")
		ds_grid_add_text("— Sou apenas um camponês... Arrancaram-me de Potosí para morrer nesse inferno verde.",spr_jogadorParado,1,"Raimundo")
		ds_grid_add_text("Esconde-o na palhoça. Enquanto defumava as bolas de borracha, ele sussurrou histórias que fizeram o fogo tremer:",spr_jogadorParado,1,"???")
		ds_grid_add_text("— Seu governo comprou generais bolivianos com libras inglesas... Mas Plácido de Castro (um gaúcho que eles temem!) está ajuntando seringueiros armados de facão e espingarda velha.",spr_jogadorParado,1,"???")
		ds_grid_add_text("A guerra vem aí, cunhado. E o Acre não será de ninguém — será cemitério.",spr_jogadorParado,1,"???")
		ds_grid_add_text("Patrão Mané desconfia. Ontem revirou as colocações com dois jagunços.",spr_jogadorParado,1,"???")
		ds_grid_add_text("Estiliano ficou imóvel como um tronco caído, escondido no forno de defumação desativado.",spr_jogadorParado,1,"???")
		ds_grid_add_text("Senti o cheiro do medo — azedo, como tucumã podre.",spr_jogadorParado,1,"???")
		break

		
		case "cartas":
		ds_grid_add_text("Sente-se um impulso incontrolável, quase como uma ordem do seu subconsciente, para abrir essa caixa. O momento é como um baque surdo no seu crânio.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("Tudo o que você escuta quando você lê as cartas nunca enviadas para sua família é o sangue escorrendo pela suas veias. Ele mentiu para você.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("...?",spr_jogadorParado,0,"Raimundo")
		if !noInventario("Cartas")
		{
		array_push(global.itens,"Cartas")
		}
		break
		
		case "narradorCartas":
		ds_grid_add_text("São as cartas que você enviou a sua família.",spr_jogadorParado,1,"???")
		ds_grid_add_text("Ou melhor, deveria ter enviado. Patrão Mané provavelmente nunca sequer tocou nelas.",spr_jogadorParado,1,"???")
		ds_grid_add_text("Está claro agora. Viver nesse local, nesse trabalho, nessas condições... É impossível. Não há muito o que se fazer para melhorar as condições por aqui.",spr_jogadorParado,1,"???")
		ds_grid_add_text("Se não tem como melhorar, a única alternativa é fugir.",spr_jogadorParado,1,"???")
		ds_grid_add_text("Tudo o que você sente é a vontade de seguir seu caminho para descobrir as mil perguntas sem respostas depois desse armazém.",spr_placeholdernpc,1,"???")
		global.passar = true
		break
		
		case "porta1":
		ds_grid_add_text("É necessário ter a chave do armazém para entrar.",spr_placeholdernpc,1,"Narrador")
		break
		
		case "npcfacao":
		ds_grid_add_text("Pelo caminho você encontrará muita grama alta. Elas podem dificultar sua passagem, então acho que isso será de grande ajuda.",spr_placeholdernpc,1,"???")
		ds_grid_add_text("Raimundo obteve um Facão.",spr_particulaGrama,1,"???")
		if !noInventario("Facão")
		{
		array_push(global.itens,"Facão")
		}
		break
		
		case "npcpocao":
		ds_grid_add_text("Creio que está se sentindo cansado. Pegue este remédio, foi feito por povos da região.",spr_placeholdernpc,1,"???")
		ds_grid_add_text("Dizem que ao tomar, sua energia se recuperará mais rápido, além de se cansar menos ao realizar ações.",spr_placeholdernpc,1,"???")
		ds_grid_add_text("Raimundo obteve um Remédio indígena.",spr_particulaGrama,1,"Narrador")
		ds_grid_add_text("Aperte F para beber o remédio.",spr_particulaGrama,1,"Narrador")
		if !noInventario("Remédio indígena")
		{
		array_push(global.itens,"Remédio indígina")
		}
		break
		
		case "npcmoeda":
		ds_grid_add_text("E aí, Raimundão!",spr_placeholdernpc,1,"???")
		ds_grid_add_text("Estava andando por aqui e achei uma bolsa usada do patrão. Acredito que ao equipá-la, você passa a ganhar o dobro de moedas.",spr_placeholdernpc,1,"???")
		ds_grid_add_text("Raimundo obteve a Bolsa do patrão.",spr_particulaGrama,1,"Narrador")
		ds_grid_add_text("Cuidado para ele não te ver usando!",spr_placeholdernpc,1,"???")
		if !noInventario("Bolsa do patrão")
		{
		obj_coin.bolsadopatrao = true
		array_push(global.itens,"Bolsa do patrão")
		}
		break
		
		case "npcbotas":
		ds_grid_add_text("Deve ser desconfortável andar descalço por aí. Pegue essas botas, são de um amigo.",spr_placeholdernpc,1,"???")
		ds_grid_add_text("Raimundo obteve umas Botas reforçadas.",spr_particulaGrama,1,"Narrador")
		ds_grid_add_text("Ao equipá-las, você ficará mais rápido, além de substituir sua corrida por arrancadas.",spr_placeholdernpc,1,"???")
		if !noInventario("Botas reforçadas")
		{
		array_push(global.itens,"Botas reforçadas")
		}
		break
		
	
	
	}
}

function ds_grid_add_row()
{
	///@arg ds_grid
	
	var _grid = argument[0]
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1)
	return (ds_grid_height(_grid)-1)
}

function ds_grid_add_text()
{
	///@arg texto
	///@arg retrato
	///@arg lado
	
	var _grid = texto_grid
	var _y  = ds_grid_add_row(_grid)
	
	_grid [# 0, _y] = argument[0]
	_grid [# 1, _y] = argument[1]
	_grid [# 2, _y] = argument[2]
	_grid [# 3, _y] = argument[3]
}