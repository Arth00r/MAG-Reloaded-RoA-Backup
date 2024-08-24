//init_shader.gml

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

if ("drift_state" in self)
{
    if drift_state == true
    {
        set_character_color_slot(4, get_color_profile_slot_r(get_player_color(player), 0), get_color_profile_slot_g(get_player_color(player), 0), get_color_profile_slot_b(get_player_color(player), 0))
        set_character_color_slot(5, get_color_profile_slot_r(get_player_color(player), 1), get_color_profile_slot_g(get_player_color(player), 1), get_color_profile_slot_b(get_player_color(player), 1))
        switch (alt_cur)    // GAUNTLET ALTS CODE  
        {                   //  (makes your hand cloth glow with Drift,
            case 10:        //  for alts that use those colors as gauntlets
            case 12:        //  instead of cloth)
            case 15:
                set_character_color_slot(6, get_color_profile_slot_r(get_player_color(player), 0), get_color_profile_slot_g(get_player_color(player), 0), get_color_profile_slot_b(get_player_color(player), 0))
                set_character_color_slot(7, get_color_profile_slot_r(get_player_color(player), 1), get_color_profile_slot_g(get_player_color(player), 1), get_color_profile_slot_b(get_player_color(player), 1))
                break;
        }
    }
    else
    {
        set_character_color_slot(4, get_color_profile_slot_r(get_player_color(player), 4), get_color_profile_slot_g(get_player_color(player), 4), get_color_profile_slot_b(get_player_color(player), 4))
        set_character_color_slot(5, get_color_profile_slot_r(get_player_color(player), 5), get_color_profile_slot_g(get_player_color(player), 5), get_color_profile_slot_b(get_player_color(player), 5))
        switch (alt_cur)    // GAUNTLET ALTS CODE  
        {                   //  (makes your hand cloth glow with Drift,
            case 10:        //  for alts that use those colors as gauntlets
            case 12:        //  instead of cloth)
            case 15:
                set_character_color_slot(6, get_color_profile_slot_r(get_player_color(player), 6), get_color_profile_slot_g(get_player_color(player), 6), get_color_profile_slot_b(get_player_color(player), 6))
                set_character_color_slot(7, get_color_profile_slot_r(get_player_color(player), 7), get_color_profile_slot_g(get_player_color(player), 7), get_color_profile_slot_b(get_player_color(player), 7))
                break;
        }
    }
}