//aqui ficará todos os textos do jogo, para adicionar um novo texto é so dar outro case contendo o nome
//do npc( nao esquecer de atribuir um nome para cada npc em seus creates)

function all_textos(){
	switch npc_nome
	{
		case "hom":
		ds_grid_add_text("Opa, bom dia",spr_hom,0,"Hom")
		ds_grid_add_text("Sinto que ja vi voce em algum jogo",spr_jogadorParado,1,"Jogador")
		ds_grid_add_text("Impressao sua",spr_hom,0,"Hom")
		ds_grid_add_text("blz",spr_jogadorParado,1,"Jogador")
		break
		
		case "hom2":
		ds_grid_add_text("Vc de novo",spr_jogadorParado,0,"Jogador")
		ds_grid_add_text("Sou irmao do outro",spr_hom2,1,"Hom 2")
		ds_grid_add_text("ata",spr_jogadorParado,0,"Jogador")
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