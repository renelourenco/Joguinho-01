script_execute(estado);

//colisão





repeat(abs(hveloc))
{
	
	
	if(place_meeting(x+sign(hveloc),y,obj_rampa)){
			if(!place_meeting(x+sign(hveloc),y-1,obj_rampa))
				y--;	
			
	
			
			if(!place_meeting(x+sign(hveloc),y+1,obj_rampa)){
				if(place_meeting(x+sign(hveloc),y+2,obj_rampa)) and vveloc>0 {
					y++;
				}
			}
		
	
	
	}
	
	
	
	
	
	
	if (place_meeting(x+sign(hveloc),y,obj_parede))
	{
	hveloc = 0;
	break;
}else{
	x+=sign(hveloc);
	
}}

repeat(abs(vveloc))
{
	if (place_meeting(x,y+sign(vveloc),obj_parede))
	{
	vveloc = 0;
	break;
}else{
	y+=sign(vveloc);
	
}}




