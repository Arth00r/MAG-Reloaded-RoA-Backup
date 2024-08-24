atk = AT_UTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 7);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, -6);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////


hitbox_num = 1 // UPPER HITBOX
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -74);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 79);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 54);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);
set_hitbox_value(atk, hitbox_num, HG_GIVES_DRIFT, true);

hitbox_num += 1; // LOWER HITBOX
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -54);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 46);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 75);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 105);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -36);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 0);

set_num_hitboxes(atk, hitbox_num);