//animation.gml

//fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

switch (state)
{
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		switch (attack)
		{
			case AT_DAIR:
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.4; //sets the speed the strong charge animation goes
	
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;
				}
		}
		break;
	case PS_WALL_JUMP: //easy clinging
		if (can_wall_cling)
		{
			//makes sure the cling_timer is consistent with the state_timer
			if (state_timer == 0) cling_timer = 0;
			if (clinging) cling_timer = state_timer;
			
			//sets image to the proper index
			if (clinging && image_index >= cling_frame) image_index = cling_frame; //when clinging and the image_index goes over the cling frame, force it back
			else //when not clinging, simply do the animation
			{
				image_index = lerp(
					image_index < cling_frame ? 0 : cling_frame, //depending on if we clinged for enough time to reach the cling frame, the lerp adapts
					image_number, //this is the maximum frame number in the strip
					(state_timer-cling_timer)/walljump_time //checks when the animation starts [state_timer - cling_timer] and for how long with [walljump_time]
				);
			}
		}
		break;
	case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland
		var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);

		if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math); //parrystun
		else image_index = lerp(0, image_number, state_timer/prat_land_time); //pratland
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN:
		hurt_img = 1;
		break;
	case PS_BURIED:
		hurt_img = 2;
		break;
}

//sets image_index to hurt_img. this allows us to put all the hurt sprites in one strip
if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	sprite_index = sprite_get("hurt");
	image_index = hurt_img;

	if (hurt_img == 5) //PS_TUMBLE and hurtground share a hurt_img index, dan programmed it like that
	{
		if (free)
		{
			//normally this is called spinhurt, but calling it hurt_tumble places it next to the hurt strip in the files
			sprite_index = sprite_get("hurt_tumble");
			image_index = state_timer * 0.1;
		}
	}

	//crystalized compatibility
	//if the character doesn't use small sprites, uncomment this crystalized section (also make sure you have a hurt_crystalized sprite in your folder)
	if (crystalized_damage_remaining > 0 || state == PS_CRYSTALIZED)
	{
		hurt_img = 1;
		
		if (crystal_stun_resize)
		{
			sprite_index = sprite_get("hurt_crystalized"); //this has to be using small sprites
			small_sprites = 1;
		}
	}
	else
	{
		if (crystal_stun_resize) small_sprites = 0;
	}

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}