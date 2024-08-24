//attack_update.gml

custom_attack_grid();
forward_down = false
back_down = false
forward_back_checks();

//B-reverse - it allows the character to turn in while using specials
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_JAB:
	case AT_FTILT:
	case AT_DTILT:
	case AT_UTILT:
	case AT_DATTACK:
		if has_hit and !hitpause
		{
			if shield_pressed
			{
				if !free
				{
					if joy_pad_idle
					{
						set_state(PS_WAVELAND)
						hsp = 0
					}
					else
					{
						if forward_down
						{
							set_state(PS_WAVELAND)
							hsp = drift_fwrd_speed
						}
						if back_down
						{
							set_state(PS_WAVELAND)
							hsp = drift_back_speed
						}
					}
				}
			}
		}
		break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL:
		switch (window)
		{
			case 1:
				if window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)
				{
					if drift_state == true
					{
						var new_effect = spawn_hit_fx(x+get_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y), ex_nspecial_effect)
						new_effect.spr_dir = spr_dir
						
						var new_hitbox = create_hitbox(AT_NSPECIAL, 2, x+get_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y))
		                new_hitbox.count = count + 1
		                new_hitbox.draw_colored = false
					}
					else
					{
						var new_hitbox = create_hitbox(AT_NSPECIAL, 1, x+get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y))
		                new_hitbox.draw_colored = false
					}
				}
				break;
			case 3:
				if drift_state == true and window_timer == 1
				{
					drift_meter -= 1
				}
			break;
		}
		break;
	case AT_NSPECIAL_AIR:
    	switch (window) //reset variables
		{
			case 1:
				my_grab_id = noone; 
				grab_time = 0;
			case 2:
				can_fast_fall = false
		}
		
		if (instance_exists(my_grab_id) && my_grab_id != noone) and !hitpause //if you have grabbed someone (and made sure they exist)
		{
			attack_end(attack)
			set_attack(AT_FTHROW);
			user_event(3);
			destroy_hitboxes();
		}
		
		
    	if !free and !hitpause
    	{
    		if (window == 3) or (window == 2 and window_timer == get_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH))
    		{
    			attack_end()
    	    	set_state(PS_LAND)
    		}
    	}
    	break;
    case AT_FTHROW:
    
    	//"with" switches the perspective of the code, in this case to the grabbed player
		//if you want to reffer to yourself in this scenario you are called "other"
		with (my_grab_id)
		{
			hurt_img = 1;
			switch (other.window)
			{
				case 1: //move grabbed player to the proper postion
					can_fast_fall = false
					x = ease_linear(x, other.x-26*other.spr_dir, other.window_timer, 10);
					y = ease_linear(y, other.y-25, other.window_timer, 10);
					
				with (other)
					{
						if drift_state == true
							if (left_down && spr_dir || right_down && -spr_dir)
							{
								spr_dir = -spr_dir
							}
					}
					break;
				
				case 2://move grabbed player to the proper postion... again
					can_fast_fall = false
					x = ease_linear(x, other.x+52*other.spr_dir, other.window_timer, 8);
               		y = ease_linear(y, other.y-25, other.window_timer, 8);
					
					with (other)
					{
						if (window == 2 && window_timer == window_end) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
						{
							var throw_hbox = create_hitbox(AT_FTHROW, 1, x, y);
								//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
							//we are disabling the detection of the hitbox for any player that isn't the grabbed player
							for (var i = 0; i < 4; ++i)
							{
								throw_hbox.can_hit[i] = false;
								throw_hbox.can_hit[my_grab_id.player] = true;
							}
						}
					}
					break;
				case 3:
					can_fast_fall = false
					break;
			}
		}
		
		//makes it so the throw will only affect the grabbed player
		with (pHitBox) if (player == other.player && attack == AT_FTILT && hbox_num == 2) //checks for the exact hitbox to tweak (our player, Ftilt, throw hitbox)
		{
			for (var i = 0; i < array_length(can_hit); i++) //can_hit is an array in hitboxes that checks which players can be hit by the hitbox
			{
				//filters every other player that wasn't grabbed to not be hit by the hitbox
				if (i == other.my_grab_id.player) can_hit[i] = true;
				else can_hit[i] = false;
			}
		}
		break;
    	
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
		break;
}



//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;

	//we need this so if we put an "illegal" value it will not crash the game
	window_num = window;

	//speed resetting - horizontally
	switch (get_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE))
	{
		case 0: hsp += get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //adds speed
		case 1: case 2: hsp = get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //sets speed for the first frame/the entire window
	}

	//speed resetting - vertically
	switch (get_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE))
	{
		case 0: vsp += get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //adds speed
		case 1: case 2: vsp = get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //sets speed for the first frame/the entire window
	}
}

#define custom_attack_grid
{
    var window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES); //looping window for X times - we set this up inside the different conditions
    var window_type_value = get_window_value(attack, window, AG_WINDOW_TYPE); //check the type of the window, helps condense the code a bit
    var window_loop_can_hit_more = get_window_value(attack, window, AG_WINDOW_LOOP_REFRESH_HITS); //checks if the loop should refresh hits or not

    //make sure the player isn't in hitpause
    if (!hitpause)
    {
        //make sure the window is in type 9 or 10
        if (window_type_value == 9 || window_type_value == 10)
        {
            //checks the end of the window
            if (window_timer == window_end)
            {
                if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
            }

            if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
            {
                if (window_timer == 0)
                {
                    if (window_loop_can_hit_more) attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                    window_loops ++; //at the start of the window, count a loop up
                }

                //when all the loops are over, go to the next window and reset the loop value
                //if it's window type 10, it should stop the loop prematurely
                if (window_loops > window_loop_value-1 || window_type_value == 10 && !free)
                {
                    destroy_hitboxes();
                    if (window < window_last)
                    {
                        window += 1;
                        window_timer = 0;
                    }
                    else set_state(free ? PS_IDLE_AIR : PS_IDLE);
                    window_loops = 0;
                }
            }
            else if (window_loop_value == 0 && window_loop_can_hit_more) attack_end(attack);
            //if we aren't using the AG_WINDOW_LOOP_TIMES custom attack grid index we can just make it loop forever
            //this is how the game usually treats window type 9
        }
    }
}

#define forward_back_checks
if right_down{
	if spr_dir == 1 {
		forward_down = true
		back_down = false
	}
	else {
		back_down = true
		forward_down = false
	}
}
else if left_down{
	if spr_dir == 1 {
		back_down = true
		forward_down = false
	}
	else {
		forward_down = true
		back_down = false
	}
}
else
{
	forward_down = false
	back_down = false
}