// a velocidade horizontal será igual a direção multiplicada pela velocidade

velv = direcao * velocidade;

	
//invertendo a direção da plataforma ao colidir com algum obstáculo
if (instance_place(x, y  + velv, obj_ponto_plataforma))
{
	direcao *= -1;	
	if (velv < 0)
	{
		velv = grav;
	}

}


//permitindo que o player possa ser transportado pela plataforma

var colisao = place_meeting(x, y + velv, obj_personagem) or place_meeting(x, y -1, obj_personagem) ;
if (colisao)
{
	with(obj_personagem)
	{
		if (!place_meeting(x, y + other.velv, obj_levitante))
		{
			y += other.velv ;
		}
	}
}


y += velv;