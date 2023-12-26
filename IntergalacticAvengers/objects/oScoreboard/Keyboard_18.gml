/// @description Insert description here
// You can write your code in this editor
	
	if(keyboard_check_pressed(ord("G"))){
		
		game_restart()
	
	}
	
	if(keyboard_check_pressed(ord("L"))){
		
		lives += 5
	
	}
	
	if(keyboard_check_pressed(ord("N"))){
		
		room_goto_next()
	
	}
	
	if(keyboard_check_pressed(ord("F"))){
		
		lives -= 1
		if(lives = 0){

			instance_destroy(oPlayer)	
			
		}
	
	}
