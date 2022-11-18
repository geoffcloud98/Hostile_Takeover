//if dash is facing left
if(image_xscale == -1) {
	x -= move_speed;	
}
//if dash is facing right
if(image_xscale == 1) {
	x += move_speed;	
}

//check for wall collisions
//if dash collides with wall destroy shadow
if(instance_place(x-1, y, obj_terrain)) {
	obj_player.x = obj_dash.x;
	obj_player.y = obj_dash.y;
	instance_destroy();	
}
if(instance_place(x+1, y, obj_terrain)) {
	obj_player.x = obj_dash.x;
	obj_player.y = obj_dash.y;
	instance_destroy();	
}

