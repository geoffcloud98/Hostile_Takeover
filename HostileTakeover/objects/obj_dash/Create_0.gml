//spawn on player
image_alpha = 0.2
x = obj_player.x
y = obj_player.y

//dash distance
dash_distance = obj_player.dash_distance

//if player is facing left
if(obj_player.image_xscale == -1) {
	image_xscale = -1;
}
//if player is facing right
if(obj_player.image_xscale == 1) {
	image_xscale = 1;
}