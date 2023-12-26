with(oEnemy1){
	if(distance_to_object(oPlayer) < 700 && !place_meeting(x,y,oEnemyShieldHitBox)){
		instance_create_depth(x,y,depth,oEBullet);	
		audio_play_sound(snd_player_shooting,0,0);
	}
}
