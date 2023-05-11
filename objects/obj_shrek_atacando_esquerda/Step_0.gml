/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if hit == true
{
veloc = 0;
alarm[1]=5;
hit = false;
}

if (vida <=0 && direc==0) {
	if reset = false{
	image_index = 0;
	reset = true;}
	sprite_index = spr_shrek_morrendo_direita;
		if scr_fim_da_animacao() 
		{instance_destroy();}
	}
	
	else if (vida <=0 && direc==1) {
		if reset = false{
	image_index = 0;
	reset = true;}
		sprite_index = spr_shrek_morrendo_esquerda;
		if scr_fim_da_animacao()
		{instance_destroy();}
	}