atk = AT_FAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 7);

window_num = 1; //initial windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

window_num ++; //attack 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //attack 1-2 transition
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

window_num ++; //attack 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //attack 1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 22);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 88);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 27);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hitbox_num ++; //attack 2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 28);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 77);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 43);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_num_hitboxes(atk, hitbox_num);