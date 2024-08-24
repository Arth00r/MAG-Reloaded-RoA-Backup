//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);



//ALT NAMES
//seasonal alt names
season_name[1] = "V-day";
season_name[2] = "Summer";
season_name[3] = "Halloween";
season_name[4] = "Christmas";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Default";
alt_name[1] = "Blue";
alt_name[2] = "Red";
alt_name[3] = "Green";
alt_name[4] = "Black/White";
alt_name[5] = "Pink";
alt_name[6] = "Mr. Red";
alt_name[7] = "Yoyo";
alt_name[8] = "Umbrella";
alt_name[9] = "Oxob";
alt_name[10] = "Chimera";
alt_name[11] = "GildedGuy";
alt_name[12] = "Go-Lucky";

//everything in between abyss and gold rank alts can be anything, i just like to put these in this pattern
//if you change it don't forget to change the icon order!
alt_name[13] = "Endless Abyss"; //has the abyss death effect
alt_name[14] = "Early Access";
alt_name[15] = "Prototype";
alt_name[16] = season_name[get_match_setting(SET_SEASON)];
alt_name[17] = "Infamous";
alt_name[18] = "Ranked Gold"; //has the shiny effect

alt_name[19] = "Knuckle Breaker";
alt_name[20] = "Flame's Salvation";
alt_name[21] = "Falcon-Zero";

alt_cur = 0;
alt_prev = 0;
alt_total = array_length(alt_name);



//ANIMATION VARS
sprite_change_offset("idle", 21, 42); //"load.gml offsets"

preview_idle = sprite_get("idle");
preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.17; //"idle_anim_speed"