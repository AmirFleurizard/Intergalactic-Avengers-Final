/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
shield = instance_create_depth(x,y,depth,oEnemyShieldHitBox);

hit = false;
hit_timer = 0;
hit_release = room_speed * 0.5;

sh_handler_timer = shader_get_uniform(sh_flash, "utimer")
