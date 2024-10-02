function playerstate_roll()
{
	// movimento 
	h_speed = lengthdir_x(speed_roll, direction);
	v_speed = lengthdir_y(speed_roll, direction);
	
	movedi_rem = max(0,movedi_rem - speed_roll);
	var _collided = player_collision()
	
	//atualizacao da animacao
	sprite_index = spriteroll;
	var _totalframes = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _totalframes) + min(((1 -(movedi_rem / distance_roll)) * (_totalframes)),_totalframes - 1);
	
	//mudar de movimento
	if(movedi_rem <= 0)
	{
		state = playerstate_free;
	}
	
}