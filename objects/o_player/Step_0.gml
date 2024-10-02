// input do Jogador
var numslots = gamepad_get_device_count();
for(var i = 0; i< numslots; i++)
{
	if(gamepad_is_connected(i))
	{
		global.controle = i;
	}
}
//gamepad_set_axis_deadzone(global.controle,0.25);
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A")) ;  //or gamepad_axis_value(global.controle, gp_axislh) < -0.25;
keyRight = keyboard_check(vk_right)or keyboard_check(ord("D"));  //or gamepad_axis_value(global.controle, gp_axislh) > 0.25;
keyUp = keyboard_check(vk_up)or keyboard_check(ord("W"))    ;    //or gamepad_axis_value(global.controle, gp_axislv) <  -0.25;
keyDown = keyboard_check(vk_down)or keyboard_check(ord("S"));    //or gamepad_axis_value(global.controle, gp_axislv) > 0.25;
keyActivate = keyboard_check_pressed(vk_space) //;or gamepad_button_check(global.controle, gp_face2);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);


script_execute(state);