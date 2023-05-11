/// @description Inserir descrição aqui


if alarm[1]>0{
gpu_set_fog(true, c_red, 0, 0);
draw_self();
gpu_set_fog(false, c_red, 0, 0);
}else{
		draw_self();
}