state = playerstate_free;

collision_map = layer_tilemap_get_id(layer_get_id("col"));


image_speed = 0;
h_speed = 0;
v_speed = 0;
speed_walk = 2.0;
speed_roll = 3.0;
distance_roll = 72;

spriteroll = splayer_roll;
sprite_run = splayer_run;
sprite_idle = s_player;
local_frame = 0;
