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
		ds_grid_add_text("Bom ver você, Raimundão. Todo mundo tá precisando das ferramentas do armazém. Como você já é mais vivido, preciso que você vá lá.",spr_placeholdernpc,1,"Patrão")
		ds_grid_add_text(".....",spr_jogadorParado,0,"Raimundo")
		ds_grid_add_text("Vai que eu mando um trabalhador desse e ele dá fim nas coisas por lá, né? Hahaha. Pegue, tá aqui a chave.",spr_placeholdernpc,1,"Patrão")
		ds_grid_add_text("É, haha... Diabo.",spr_jogadorParado,0,"Raimundo")
		array_push(global.itens, "chaveArmazem")
		break
		
		case "npc4":
		ds_grid_add_text("O armazém fica subindo esse caminho aí. Mas só entra lá com a chave, o seringalista não dá a qualquer um não.",spr_placeholdernpc,1,"Seringueiro")
		ds_grid_add_text("Que grande honra ser uma pessoa de confiança, então.",spr_jogadorParado,0,"Raimundo")
		ds_grid_add_text("Ser de confiança? Com aquele cara lá? Prefiro fazer amizade com onça do que com dono de seringal.",spr_placeholdernpc,1,"Seringueiro")
		break
		
		case "narradorIntro":
		ds_grid_add_text("Acre. 1939.\nO território amazônico foi pintado com seringais, espaços de produção de borracha.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("O governo recrutava homens de todo o país para trabalhar nos seringais, a exportação da borracha não podia parar.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("Longe de suas terras e famílias, enfrentavam a floresta, a solidão e as promessas de uma vida melhor.\nEntre eles, há um homem marcado pelo tempo e pelo trabalho árduo.",spr_placeholdernpc,1,"Narrador")
		ds_grid_add_text("'...sinto saudades de todos. Da minha terra, do meu lugar, da minha mulher. As coisas irão melhorar'...",spr_jogadorParado,1,"???")
		ds_grid_add_text("'Assinado, Raimundo.'",spr_jogadorParado,1,"Raimundo")
		break

		
		case "cartas":
		ds_grid_add_text("Umas carta aqui sla",spr_placeholdernpc,1,"Narrador")
		break
		
		case "porta1":
		ds_grid_add_text("É necessário ter a chave do armazém para entrar.",spr_placeholdernpc,1,"Narrador")
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