//load.gml

//ground movement
sprite_change_offset("idle",            21, 42);
sprite_change_offset("crouch",          21, 42);
sprite_change_offset("walk",            24, 47);
sprite_change_offset("walkturn",        24, 47);
sprite_change_offset("dash",            24, 47);
sprite_change_offset("dashstart",       24, 47);
sprite_change_offset("dashstop",        24, 47);
sprite_change_offset("dashturn",        24, 47);

//air movement
sprite_change_offset("jumpstart",       21, 42);
sprite_change_offset("jump",            21, 42);
sprite_change_offset("doublejump",      24, 43);
sprite_change_offset("walljump",        24, 47);
sprite_change_offset("pratfall",        24, 47);
sprite_change_offset("land",            21, 42);
sprite_change_offset("landinglag",      21, 42);

//parry button
sprite_change_offset("parry",           21, 42);
sprite_change_offset("roll_forward",    24, 47);
sprite_change_offset("roll_backward",   24, 47);
sprite_change_offset("airdodge",        24, 43);
sprite_change_offset("waveland",        24, 47);
sprite_change_offset("tech",            24, 47);

//hurt
sprite_change_offset("hurt",            24, 47); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("hurt_tumble",     24, 47); //normally called "spinhurt"

//normals
sprite_change_offset("jab",             21, 42, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           29, 56, true);
sprite_change_offset("ftilt",           24, 42, true);
sprite_change_offset("dtilt",           24, 42, true);
sprite_change_offset("dattack",         24, 47, true);
sprite_change_offset("ustrong",         24, 47, true);
sprite_change_offset("fstrong",         27, 47, true);
sprite_change_offset("dstrong",         52, 47, true);
sprite_change_offset("nair",            42, 72, true);
sprite_change_offset("uair",            32, 64, true);
sprite_change_offset("fair",            23, 47, true);
sprite_change_offset("bair",            24, 43, true);
sprite_change_offset("dair",            43, 63, true);

//specials
sprite_change_offset("nspecial",        32, 47, true);
sprite_change_offset("nspecial_air",    47, 70, true);
sprite_change_offset("uspecial",        32, 47, true);
sprite_change_offset("fspecial",        32, 47, true);
sprite_change_offset("fspecial_air",    32, 47, true);
sprite_change_offset("dspecial",        20, 47, true);
sprite_change_offset("dspecial_air",    20, 47, true);
sprite_change_offset("nspecial_projectile",     70, 13);
sprite_change_offset("nspecial_projectile_destroy",     60, 15);
sprite_change_offset("ex_nspecial_projectile",  57, 68);

//misc
sprite_change_offset("taunt",           24, 47, true);
sprite_change_offset("taunt2",          24, 47, true);
sprite_change_offset("intro",           24, 47, true);
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 47); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

//effects