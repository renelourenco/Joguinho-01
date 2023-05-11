// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_textos(){

switch npc_nome{
	case "ShrekDibas":
	ds_grid_add_text("Arluca: Olá senhor Shrek estou testando minha caixa de texto no momento, como vai você?", spr_ralucamoldura_normal,0, "Personagem 1");
	ds_grid_add_text("Segundo fffTexto", spr_ralucamoldura_desconfiado,0, "Personagem 1");
	ds_grid_add_text("Terceiro Texto Vamo lá um dois trex terceiro texto bora galera não é possível não dá mais vamo lá	", spr_ralucamoldura_brabo, 1, "Personagem 2");
	ds_grid_add_text("Quarto Texto", spr_ralucamoldura_surpreso, 0, "Personagem 1");
	
	case "personagemteste":
	ds_grid_add_text("Arluca: Olá senhor Quadrado estou testando minha caixa de texto no momento, como vai você?", spr_ralucamoldura_normal,0, "Personagem 1");
	ds_grid_add_text("Segundo fffTexto", spr_ralucamoldura_desconfiado,0, "Personagem 1");
	ds_grid_add_text("Terceiro Texto Vamo lá um dois trex terceiro texto bora galera não é possível não dá mais vamo lá	", spr_ralucamoldura_brabo, 1, "Personagem 2");
	ds_grid_add_text("Quarto Texto", spr_ralucamoldura_surpreso, 0, "Personagem 1");
	
	break;
}}


function ds_grid_add_row(){
	///@arg ds_grid
 
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}

function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome
 
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}