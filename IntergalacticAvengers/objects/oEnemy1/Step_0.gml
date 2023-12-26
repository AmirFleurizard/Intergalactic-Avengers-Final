if(instance_exists(oPlayer) && abs(x - oPlayer.x) < 700){
	hsp = dir * movespeed;
	vsp += grav;
	if(oPlayer.x < x) image_xscale = -1;
	if(oPlayer.x > x) image_xscale = 1;
	
	//horizontal
	if (place_meeting(x+hsp,y,oGround))
	{
	    while (!place_meeting(x+sign(hsp),y,oGround))
	    {
	       x += sign(hsp);
	    }
	    hsp = 0;
	    dir *= -1;
	}

	x += hsp;

	//Vertical
	if (place_meeting(x,y+vsp,oGround))
	{
	    while (!place_meeting(x,y+sign(vsp),oGround))
	    {
			y += sign(vsp);
	    }
		vsp = 0;
		if (!position_meeting(x+((sprite_width/2)*dir*image_xscale), y+(sprite_height/2)+8, oGround))
	    {
			dir *= -1;
	    }
	}

	y += vsp;

	//Enemy Collision
	if (place_meeting(x,y,oPlayer))
	{
		with (oPlayer) instance_destroy();
	}
	
}

if(place_meeting(x,y,oBullet)){
	instance_destroy(instance_place(x,y,oBullet));
	instance_destroy();
}
