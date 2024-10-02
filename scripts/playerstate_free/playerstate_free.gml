function playerstate_free()
{
//Movimento
h_speed = lengthdir_x(inputMagnitude * speed_walk, inputDirection);
v_speed = lengthdir_y(inputMagnitude * speed_walk, inputDirection);

player_collision();

// Sprite index (animacao)
var _oldsprite = sprite_index;
if(inputMagnitude != 0)
{
	direction = inputDirection
	sprite_index = sprite_run;
} else sprite_index = sprite_idle;
if (_oldsprite != sprite_index) local_frame = 0;

//index animacao 
//plaayer animation
playeran_sprite();


// mudar de estado 
if(keyActivate)
{
	state = playerstate_roll;
	// distace remaning
	movedi_rem = distance_roll
}


}