// animacao do sprite 

// Evento Create
// e muinto importate usar o function
function playeran_sprite()
{

//aqui nos scripts ele vai selecionar uma das animacoes quando o jogador se encontra em movimento
// var _cardinaldirection = round(direction/90);
// var _cardinaldirection = floor(((direction div 45) + 1) * 0.5);
 var _totalframes = sprite_get_number(sprite_index) /4;
image_index = local_frame + (CARDINAL_DIR * _totalframes);
local_frame += sprite_get_speed(sprite_index) / FRAME_RATE;

//se a animacao fazer o lupe no proximo jogo
if(local_frame >= _totalframes)
{
	animation_end = true;
	local_frame -= _totalframes;
} else animation_end = false;
}


