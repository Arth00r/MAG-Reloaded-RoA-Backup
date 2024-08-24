atk = AT_UAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("uair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);

window_num ++; //attack lower
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);


window_num ++; //attack upper
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num ++; //attack back
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //endlag 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num ++; //endlag 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //lower hitbox
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 46);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 29);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 56);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 85);

set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4);

set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_dsmash_seinhits"));
set_hitbox_value(atk, hitbox_num, HG_EFFECT, 30); //this effect doesn't exist by normal means, it's added manually
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[0]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num += 1; // Lower Hitbox inner
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 28);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 36);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 44);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 85);

set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4);

set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_dsmash_seinhits"));
set_hitbox_value(atk, hitbox_num, HG_EFFECT, 30); //this effect doesn't exist by normal means, it's added manually
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[0]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num += 1; // Upper hitbox
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 10);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -72);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 76);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 44);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 85);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_dsmash_seinhits"));
set_hitbox_value(atk, hitbox_num, HG_EFFECT, 30); //this effect doesn't exist by normal means, it's added manually

hitbox_num += 1; // Upper hitbox (tipper)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 10);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -82);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 76);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 54);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 85);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_dsmash_seinhits"));
set_hitbox_value(atk, hitbox_num, HG_EFFECT, 30); //this effect doesn't exist by normal means, it's added manually
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes
set_hitbox_value(atk, hitbox_num, HG_GIVES_DRIFT, true); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num += 1; // Upper hitbox side
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 41);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -62);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 33);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 61);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 85);

set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4);

set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_dsmash_seinhits"));
set_hitbox_value(atk, hitbox_num, HG_EFFECT, 30); //this effect doesn't exist by normal means, it's added manually
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[0]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes


hitbox_num += 1; // Back hitbox
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 5);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -24);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -55);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 43);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 35);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);

set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.3);

set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_dsmash_seinhits"));
set_hitbox_value(atk, hitbox_num, HG_EFFECT, 30); //this effect doesn't exist by normal means, it's added manually
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[0]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes


set_num_hitboxes(atk, hitbox_num);