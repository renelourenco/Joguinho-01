/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//movimentação
direita = 0;
esquerda = 0;
cima = 0;

direc=0;


on_platform = false;


	gravidade = 0.2;	
	hveloc = 0;
	vveloc = 0;
	vveloc_min = -8.5;
	vveloc_max = 8.5;
	acc= 0.3;
	dcc=0.3;
	move_spd=0;
	move_spd_max = 3.0;

//pulo
alturapulo=15;
coyote_time_max =3;
coyote_time = 0;

//combate
vida = 5;

alfa_hit=0;
alarm[0]=0;

estado = scr_personagem_movendo;
estado2= 4;
inv_tempo = 180;

//Textos e Dialogos
//nome = "Arluca";
