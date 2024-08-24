atk = AT_DTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 5);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 22);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -9);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 44);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


hitbox_num += 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num-1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 60)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -9);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 37);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 100);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);
set_hitbox_value(atk, hitbox_num, HG_GIVES_DRIFT, true);

set_num_hitboxes(atk, hitbox_num);