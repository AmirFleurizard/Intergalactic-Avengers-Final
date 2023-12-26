/// @description Insert description here
// You can write your code in this editor
if(hit){
	
	shader_set(sh_flash);
	
	shader_set_uniform_f(sh_handler_timer, hit_timer);
	
	draw_self();
	shader_reset();
	
} else{
	
	draw_self();
	
}
