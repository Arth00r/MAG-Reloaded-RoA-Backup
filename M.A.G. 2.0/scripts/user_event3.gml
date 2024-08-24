switch attack
{
    case AT_BAIR:
    	atk = AT_BAIR
        if drift_state == true
        {
            set_window_value(atk, 3, AG_WINDOW_VSPEED_TYPE, 2)
            set_window_value(atk, 3, AG_WINDOW_VSPEED, -4)
            set_window_value(atk, 3, AG_WINDOW_HSPEED_TYPE, 2)
            set_window_value(atk, 3, AG_WINDOW_HSPEED, 9)
            set_hitbox_value(atk, 1, HG_WIDTH, 80);
            set_hitbox_value(atk, 1, HG_HEIGHT, 80);
            set_hitbox_value(atk, 1, HG_DAMAGE, 6);
            set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.9);
            set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 9);
            set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.9);
            set_hitbox_value(atk, 1, HG_GIVES_DRIFT, false);
            set_hitbox_value(atk, 1, HG_TAKES_DRIFT, true);
            set_hitbox_value(atk, 1, HG_HITBOX_COLOR, hb_color[2]);
        }
        else
        {
            reset_window_value(atk, 3, AG_WINDOW_VSPEED_TYPE)
            reset_window_value(atk, 3, AG_WINDOW_VSPEED)
            reset_window_value(atk, 3, AG_WINDOW_HSPEED_TYPE)
            reset_window_value(atk, 3, AG_WINDOW_HSPEED)
            reset_hitbox_value(atk, 1, HG_WIDTH);
            reset_hitbox_value(atk, 1, HG_HEIGHT);
            reset_hitbox_value(atk, 1, HG_DAMAGE);
            reset_hitbox_value(atk, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(atk, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(atk, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(atk, 1, HG_GIVES_DRIFT);
            reset_hitbox_value(atk, 1, HG_TAKES_DRIFT);
            reset_hitbox_value(atk, 1, HG_HITBOX_COLOR);
        }
        break;
    case AT_NSPECIAL:
    	atk = AT_NSPECIAL
        if !free
        {
            if drift_state == true
            {
                set_window_value(atk, 1, AG_WINDOW_LENGTH, 20);
                set_window_value(atk, 3, AG_WINDOW_LENGTH, 15);
            }
            else
            {
                reset_window_value(atk, 1, AG_WINDOW_LENGTH);
                reset_window_value(atk, 3, AG_WINDOW_LENGTH);
            }
        }
        else
        {
            attack_end(AT_NSPECIAL)
            set_attack(AT_NSPECIAL_AIR)
            user_event(3)
        }
        break;
    case AT_FTHROW:
		atk = AT_FTHROW
        if drift_state == true
        {
        	set_window_value(atk, 4, AG_WINDOW_LENGTH, 18);
            set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.6);
        }
        else
        {
        	reset_window_value(atk, 4, AG_WINDOW_LENGTH);
            reset_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(atk, 1, HG_BASE_KNOCKBACK);
        }
        break;
    case AT_JAB:
    	atk = AT_JAB
    	if drift_state == true
    	{
			set_window_value(atk, 5, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(atk, 5, AG_WINDOW_HSPEED, 9);
			set_window_value(atk, 5, AG_WINDOW_VSPEED_TYPE, 2);
			set_window_value(atk, 5, AG_WINDOW_VSPEED, -7);
			
			set_window_value(atk, 6, AG_WINDOW_LENGTH, 8);
    	}
    	else
    	{
    		reset_window_value(atk, 5, AG_WINDOW_HSPEED_TYPE);
			reset_window_value(atk, 5, AG_WINDOW_HSPEED);
			reset_window_value(atk, 5, AG_WINDOW_VSPEED_TYPE);
			reset_window_value(atk, 5, AG_WINDOW_VSPEED);
			
			reset_window_value(atk, 6, AG_WINDOW_LENGTH);
    	}
}