script_execute(estado);


//combate

if alarm[0]>0 {
	if image_alpha >= 1{
		alfa_hit = -0.05;
	} else if image_alpha <= 0 {
		alfa_hit = 0.05;
	}
	image_alpha += alfa_hit;
	}
	else{
		image_alpha = 1;
	}
	
	


if estado2==0
{sprite_index=spr_personagem_pendurado_esquerda;}
if estado2==1
{sprite_index=spr_personagem_pendurado_direita;}
/*
#region Diálogo
if distance_to_object(obj_par_npcs) <= 10{
	if keyboard_check_pressed(ord("F")) and global.dialogo ==false
	{
		var _npc = instance_nearest(x,y,obj_par_npcs);
		var _dialogo = instance_create_layer(x,y, "Dialogo", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}
#endregion

#region Diálogo
if distance_to_object(obj_inimigo_shrek) <= 400{
	{
		var _npc = instance_nearest(x,y,obj_inimigo_shrek);
		var _dialogo = instance_create_layer(x,y, "Dialogo", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}
#endregion
*/