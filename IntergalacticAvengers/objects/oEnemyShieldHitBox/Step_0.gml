if(place_meeting(x,y,oBullet)){
	instance_destroy(instance_place(x,y,oBullet));
	enemyParent.hit = true;
}
x = enemyParent.x;
y = enemyParent.y;
image_xscale = enemyParent.image_xscale;


