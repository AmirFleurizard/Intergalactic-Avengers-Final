if(keyboard_check_pressed(ord("R"))) {
	lives = 3;
	room_goto(Room1);
}

if(!instance_exists(oEnemy1) && (room = Room1 || room = Room2)){	
	room_goto_next();	
}
if(!(lives > 0)){
	score = 0;
}
