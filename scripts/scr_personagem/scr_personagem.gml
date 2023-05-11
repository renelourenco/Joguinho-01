function scr_personagem_movendo(){

//checagem
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));
cima = keyboard_check_pressed(ord("W"));
cima_segurar = keyboard_check(ord("W"));
estado2=3;




	

//movimentação geral
var move = direita-esquerda != 0;

/*if (place_meeting(x,y+1,obj_levitante))
{
vveloc=sign(obj_levitante.currentSpeed);
}
else
{*/
vveloc+=gravidade;
vveloc=clamp(vveloc,vveloc_min, vveloc_max);

	
	
	

if (move){
	
		direc=point_direction(0,0, direita - esquerda,0);
		move_spd = approach(move_spd, move_spd_max, acc);
		if direc == 0
		{
			sprite_index = spr_personagem_correndo_direita;
		}
		else 
		{
			sprite_index = spr_personagem_correndo_esquerda;
		}
		
} else
{	
	move_spd = approach(move_spd, 0, dcc);
	if direc == 0
	{
		sprite_index = spr_personagem_parado_direita;
	}
	else
	{
		sprite_index = spr_personagem_parado_esquerda;
	}
}

hveloc= lengthdir_x(move_spd,direc);

//checa e vira o lado


//MAIS TESTES

//var _solid_collision = place_meeting(x, y + slope_max, obj_solidos_parente);



//pulo

var ground = place_meeting(x,y+1,obj_parede) /*|| place_meeting(x,y+1,obj_levitante)*/;
	if (ground){
		coyote_time = coyote_time_max;}
	else{
		coyote_time--;
	
		
var direcao = "";
if (direc == 0) {
direcao = "direita";
}
else {
direcao = "esquerda";
}

if (vveloc < 0) {
sprite_index = asset_get_index("spr_personagem_pulo_" + direcao);
}
else if (vveloc > 0) {
    var i;
    for (i = 1; i <= 10; i++) {
        if (place_meeting(x, y+i, obj_levitante)) {
            break;
        }
    }
    if (i == 11 && !place_meeting(x, y, obj_rampa) && !place_meeting(x, y+1, obj_rampa)) {
        sprite_index = asset_get_index("spr_personagem_queda_" + direcao);
    }
}


}
	
	if(!cima_segurar && vveloc <0 && coyote_time>0) vveloc = max(vveloc, -alturapulo/2);
	
	if (cima && coyote_time>0){
	//dá pra usar isso aqui pra double jump
	coyote_time=0;
	vveloc=0;
	vveloc-=alturapulo;
	}
	
	


var tonaparede = place_meeting(x-1,y,obj_parede) || place_meeting(x+1, y , obj_parede);
if (tonaparede)
{
	if (vveloc >1){
	vveloc = 1;
	if cima {
		vveloc=vveloc - alturapulo;
		
}}}

/*var tonaplataforma = place_meeting (x,y+1, obj_levitante)
if (tonaplataforma)
{
if cima{
vveloc=vveloc-alturapulo;
}
}
*/
//Código do TXT vem até aqui

if keyboard_check_pressed(ord("J")){
	image_index = 0; //resetar animação
	estado = scr_personagem_atacando; //mudar o estado para atacando
	
	//criar a hitbox do nosso ataque
	//direita
	
	if direc == 0 {
	instance_create_layer(x+10, y - 8, "Instances", obj_hitbox);
	}
	
	//esquerda
	else if direc == 1{
	instance_create_layer(x-20, y-8, "Instances", obj_hitbox);
	
	}
	
	}

//rampa



function scr_personagem_atacando(){
	//mudar a sprite dependendo da direção
if direc == 0 {
	sprite_index = spr_personagem_atacando_direita;
}
else if direc == 1 {
	sprite_index = spr_personagem_atacando_esquerda;
}


//quando a cabar a movimentação do atatque, retornar para o estado da movimentação
if scr_fim_da_animacao()
{
estado = scr_personagem_movendo;
}

}
}



