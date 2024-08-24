atk = AT_FTHROW;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, true);
set_attack_value(atk, AG_OFF_LEDGE, true);

window_num = 1; //grab
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, -vsp/10);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

window_num ++;  //throw startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, -3);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -1);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

window_num ++;  //throw
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -3);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

window_num ++;  //grab endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;  // Throw
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 80);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 52);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -45);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 35);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(atk, hitbox_num, HG_GIVES_DRIFT, true);

set_num_hitboxes(atk, 0);