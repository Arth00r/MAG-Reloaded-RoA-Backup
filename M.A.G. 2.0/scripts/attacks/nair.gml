atk = AT_NAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("nair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 5);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num += 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -45);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 55);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);

hitbox_num += 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 35);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));
set_hitbox_value(atk, hitbox_num, HG_GIVES_DRIFT, true);


set_num_hitboxes(atk, hitbox_num);