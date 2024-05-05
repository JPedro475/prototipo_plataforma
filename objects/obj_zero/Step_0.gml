//Controles do player
var _chao = place_meeting(x,y + 1, obj_ground);


var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);

velh = (_right - _left)*vel;

//aplicando a gravidade
velv += grav;

//Pulo
if (_chao)
{
	if(_jump)
	{
		velv = - vel_jump;
	}
	
	//Mudando sprite
	if (velh !=0)
	{
		sprite_index = spr_zero_run;
		image_xscale = sign(velh);
	}
	
	else
	{
		sprite_index = spr_zero_idle;
	}
}
	
else
{
	if (velv <0)
	{
		sprite_index = spr_zero_jump;
	}
	else
	{
		sprite_index = spr_zero_fall;
	}
	
	
	//gravidade
	velv += grav;
	if (velh != 0) 
	{
		image_xscale = sign(velh);
	}
}
