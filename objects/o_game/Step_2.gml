if (keyboard_check_pressed(vk_escape))
{
	global.gamepaused = !global.gamepaused;
	if(global.gamepaused)
	{
		with(all)
		{
			gamepau_ima = image_speed
			image_speed = 0
		}
	}
	else
	{
		with(all)
		{
			image_speed =gamepau_ima;
		}
	}
}