//gun direction faces cursor
direction = point_direction(x, y, obj_crosshair.x, obj_crosshair.y);

//follow the player around
//if player is facing left
if(obj_player.image_xscale == -1) {
	x = obj_player.x - 64;
	image_xscale = -1;
	image_angle = direction - 180;
} else {
	x = obj_player.x + 64
	image_xscale = 1;
	image_angle = direction;

}

y = obj_player.y;

//player shoot





