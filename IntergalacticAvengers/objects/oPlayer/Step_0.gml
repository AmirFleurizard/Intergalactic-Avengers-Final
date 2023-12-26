keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyJump = keyboard_check(vk_space);
keySprint = keyboard_check_pressed(vk_shift);


//idk how to mak the player to stop animating when not walking - Christine
//sprite_index = sPlayer_Idle;


if(keyRight - keyLeft != 0){
	if(moveDir != sign(keyRight - keyLeft)){
		if(abs(moveDir + sign(keyRight - keyLeft) * accel) >= abs(keyRight - keyLeft)){
			image_xscale = moveDir;
			sprite_index = sPlayer_Walk;
			moveDir = sign(keyRight - keyLeft); 
		} else {
			moveDir += sign(keyRight - keyLeft) * accel; 
		}
	}
}


if(keyRight - keyLeft == 0){
	sprite_index = sPlayer_Idle;
	if(sign(moveDir) == 1){
		if(moveDir - sign(moveDir) * accel <= 0){
			moveDir = 0; 
		} else {
			moveDir -= sign(moveDir) * accel;
		}
	} else {
		if(moveDir - sign(moveDir) * accel >= 0){
			moveDir = 0; 
		} else {
			moveDir -= sign(moveDir) * accel;
		}
	}
}

hsp = moveDir * moveSpeed;

if(keySprint && !sprintUsed){
	if(!keyLeft && !keyRight && !keyDown && !keyUp){
		moveDir = image_xscale;
	}
	hsp = sprintSpeedH * moveDir;
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]) + sprintSpeedH * moveDir,camera_get_view_y(view_camera[0]))
	vsp = (keyDown - keyUp) * sprintSpeedV;
	audio_play_sound(snd_dash, 0, false);
	sprintUsed = true;
	alarm[0] = 120;
}

if(vsp + grav >= 20){
	vsp = 20;	
} else {
	vsp += grav;
}

if(canJump-- > 0) && (keyJump){
	vsp = jumpSpeed;
	canJump--;
	if(canJump-- < 8) jumpSpeed--;
}


if(place_meeting(x + hsp, y, oGround)){
	while(abs(hsp) > 0.1){
		hsp *= 0.5;
		if !place_meeting(x+hsp, y, oGround) x += hsp;
	}
	hsp = 0;
}

x += hsp;

if(place_meeting(x, y + vsp, oGround)){
	if(vsp > 0){
		canJump = 20;
		jumpSpeed = -10;
	}
	while(abs(vsp) > 0.1){
		vsp *= 0.5;
		if !place_meeting(x, y + vsp, oGround) y += vsp;
	}
	vsp = 0;
}
y += vsp;

if(y - sprite_height/2 > room_height) instance_destroy();

if(place_meeting(x,y,oEBullet)) instance_destroy();

if(mouse_check_button_pressed(mb_left)){
	instance_create_layer(x,y,layer,oBullet);	
	audio_play_sound(snd_player_shooting, 0, false);
}

