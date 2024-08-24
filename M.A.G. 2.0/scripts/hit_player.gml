//hit_player.gml

if (my_hitboxID.orig_player_id != self) exit; //this line makes sure that the hitboxes belong to us and not someone like kragg

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

if get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_GIVES_DRIFT) == true
{
    if drift_state = false
    {
        user_event(1)
    }
}
if get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_TAKES_DRIFT) == true
{
    if drift_state = true
    {
        user_event(2)
    }
}

if my_hitboxID.attack == AT_NSPECIAL_AIR
{
    set_grab_id()
}
if my_hitboxID.attack == AT_FTHROW
{
    my_grab_id = noone
}

if my_hitboxID.attack == AT_FAIR
{
    if my_hitboxID.hbox_num = 1
    {
        if old_vsp >= 0
        {
            old_vsp = -4
        }
    }
    else
    {
        old_vsp = -4
    }
}

with (my_hitboxID) if (type == 2)
{
    //psuedo melee hitbox hitpause
    if (psuedo_melee_hitbox)
    {
        with (other) //this "other" reffers to us, the player that's hitting
        {
            old_hsp = hsp; //set the speed values that should activate when exiting the move
            old_vsp = vsp;
            hitstop = get_hitstop_formula( //this formula is used to calculate how much hitpause we should get
                get_player_damage(hit_player_obj.player),
                other.damage,
                other.hitpause,
                other.hitpause_growth,
                0);
            hitstop_full = hitstop;
            hitpause = true; //we also need to manually set hitpause to true as it doesn't normally do this for projectiles
        }

        hitbox_hitstop = other.hitstop; //set the hitpause of the hitbox to the player's hitpause
        has_hit = other.has_hit; //set off the has_hit and has_hit_player flags, usually used for cancels
        has_hit_player = other.has_hit_player;
        in_hitpause = true; //the hitbox counterpart to the player's "hitpause" variable
    }

    //stop projectile homing if multihits start multihitting
    if (multihit_amount > 0 && homing_enabled) homing_enabled = false;

    ///////////////////////////////////////// MULTIHIT LOGIC /////////////////////////////////////////

    //if the multihit amount is more than 0 it should activate the multihit code
    if (multihit_amount > 0)
    {
        //proj_hit_count is the current amount of hits done already
        //every time our projectile hits, it counts up by one
        if (multihit_amount > proj_hit_count)
        {
            multihit_hit_player = other.hit_player_obj; //sets the target player that should be dragged along the projectile

            //start the multihit timer that decides when it should hit again
            proj_gap_timer = multihit_gap;

            //puts projectile in hitpause and brings the hitbox timer back a bit
            in_hitpause = true;
            if (hitbox_timer = length - multihit_gap*3) hitbox_timer = length - clamp(multihit_gap*3, 0, length);

            //displays hit fx
            spawn_hit_fx(x, y, hit_effect);
        }
        else proj_multihit_final = true;

        if (proj_multihit_final)
        {
            hitbox_timer = length; //makes it so it stops existing on the final hit
            multihit_hit_player = noone;
        }
    }
}

#define set_grab_id
{
    if (my_grab_id == noone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND))
    {
        my_grab_id = hit_player_obj;
    }
}