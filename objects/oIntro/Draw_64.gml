draw_sprite_ext(sPixel,0,0,0,1280,150,0,c_black,1);
draw_sprite_ext(sPixel,0,0,570,1280,720,0,c_black,1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fPixel);
draw_text(640,600,print);

if (holdspace > 0)
{
	//draw_set_alpha(wave(0.2,0,0,1,0))
	
	//Lugar que aparece a mensagem
	var time = room_speed/2;
	if timer mod time < time/2 {
		
	draw_text (640,690, "Segure enter para prosseguir/pular");
	}
	else
	{
	draw_set_color(c_black);
	draw_text (640,690, "Segure enter para prosseguir/pular");
	}
	

// Atualize o temporizador
timer++;








draw_sprite_ext(sPixel,0,0,0,1280,720,0,c_black,a);}