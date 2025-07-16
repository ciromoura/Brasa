// State Machine do inimigo
alpha = lerp(alpha,0,0.1)
if currenthealth <=0 
{
	instance_destroy()
}
switch estado  
{
	case state.longeplayer:
		if dir = 0
		{
			distance_p += speed
			if distance_p >= distance_t
			{
				direction = 180
				distance_p = 0
				dir = 1
				image_xscale = -1
			}
		}
		if dir = 1
		{
			distance_p += speed
			if distance_p >= distance_t
			{
				direction = 0
				distance_p = 0
				dir = 0
				image_xscale = 1
			}
		}
		break;
		//percorre uma certa distância, assim que a distância percorrida for maior que a total, muda de direção e repete o processo
	case state.pertoplayer:

		break;
}


