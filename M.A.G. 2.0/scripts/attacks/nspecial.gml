atk = AT_NSPECIAL;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);

window_num ++; //shoot windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));

window_num ++; //shoot/endlag (it has no whifflag because it's only shoots a projectile)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 25);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;  // Projectile
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 80);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -15);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 30);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.5); //non-resource based projectiles usually have a 0.5 hitstun multiplier so players hit by it can act sooner
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("nspecial_projectile"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(atk, hitbox_num, HG_GIVES_DRIFT, true);

hitbox_num += 1; // EX Projectile
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 7);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 52);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);


set_num_hitboxes(atk, 0);