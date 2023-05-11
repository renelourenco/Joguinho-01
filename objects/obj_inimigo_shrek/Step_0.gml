/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
nome="ShrekDibas";
event_inherited();
if vida > 0{
if place_meeting(x, y, obj_parede_inimigo)
{
	if direc == 0{
		direc = 1;
	}
	else if direc == 1{
		direc = 0;
	}
}

if direc == 0 {
	sprite_index = spr_shrek_andando_direita;
	x += veloc;
}
	else if direc == 1{
		sprite_index = spr_shrek_andando_esquerda;
		x-= veloc;
	}
	
}