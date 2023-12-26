/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
if(lives > 0){
	draw_set_halign(fa_left);
	draw_text(32,48,"Score: " + string(score));
	draw_text(32,72,"Lives: " + string(lives));
} else {
	draw_set_halign(fa_center);
	draw_sprite(sLose,0,view_wport[0]/2,view_hport[0]/2-256);
	draw_text(view_wport[0]/2,view_hport[0]/2 - 128,"Game Over!");
	draw_text(view_wport[0]/2,view_hport[0]/2,"Your final score was " + string(score));
	draw_text(view_wport[0]/2,view_hport[0]/2 + 128,"Press the 'R' key to restart!");
}
