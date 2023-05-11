/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if inicializar == false
{
	scr_textos();
	inicializar=true;
	//alarm[0]=1;
}


/*if texto_grid[# Infos.Nome, pagina] == "Personagem 1" && som_tocado == false {
    var _snd = choose(snd_voice1, snd_voice2, snd_voice3);
    audio_play_sound(_snd, 1, 0, 0.5);
    som_tocado = true;
}*/


if mouse_check_button_pressed(mb_left){
	if l < string_length(texto_grid[# Infos.Texto, pagina])
	{ l = string_length(texto_grid[# Infos.Texto, pagina]);
	}
	else
	{
		alarm[0]=1;
		l=0;
	
if pagina < ds_grid_height(texto_grid)-1{
	pagina++;
}
else {
	global.dialogo = false;
	instance_destroy();

}
}}