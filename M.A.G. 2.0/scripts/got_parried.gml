//got_parried.gml

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

if (instance_exists(my_grab_id) && my_grab_id != noone) my_grab_id = noone;

//multihit projectile hit count resets on parry
if (my_hitboxID.type == 2 && my_hitboxID.multihit_amount > 0 && my_hitboxID.proj_hit_count < my_hitboxID.multihit_amount)
{
    my_hitboxID.proj_hit_count = 0;
    my_hitboxID.hitbox_timer = 0;
}