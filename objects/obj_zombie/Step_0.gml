//Tocando o chão

var _chao	= place_meeting(x, y + 1, obj_ground);

if (_chao)
{
	tempo_andar -=1;
	
	if(tempo_andar <=0)
	{
		andando = choose(true, false);
		if (andando)
		{
			velh = choose(vel, -vel);
		}
		else
		{
			//velh = 0;
		}
		
		tempo_andar = room_speed * 3;
	}
	
	if(velh != 0)
	{
		sprite_index = spr_zombie_walk;
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_zombie_idle;
	}
	
	if(place_meeting(x + velh, y, obj_ground))
	{
		velh *= -1;
	}
	if (pd_cair == false)
{
		if (place_meeting(x + (velh * 10), y+1, obj_ground) == false)
		{
			velh *= -1;
		}	
	}
}
else
{
	velv += grav;	
	velh = 0;
	
	if (velh != 0 )
	{
		image_xscale = sign(velh);
	}
}
