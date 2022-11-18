/// @description Player control and gravity.
// You can write your code in this editor

// Movement
if (keyboard_check(ord("A")) and !instance_place(x-move_speed, y, obj_terrain)) {
		x += -move_speed
		image_xscale = -1
	}

	if (keyboard_check(ord("D")) and !instance_place(x+move_speed, y, obj_terrain)) {
		x += move_speed
		image_xscale = 1
	}
// Jump
	if(keyboard_check(vk_space)) {
		if(instance_place(x, y+1, obj_terrain)) {
		vspeed = jump_height
		}
	}
	if(instance_place(x, y+1, obj_terrain)) {
		gravity = 0
		} else {
		gravity = 1.2
		if(vspeed > 12) vspeed = 12
		}
// Dash move
		if(keyboard_check_pressed(vk_shift) and can_dash) {
			can_dash = false
			
			
			//create dash shadow
			instance_create_layer(x,y, "Instances", obj_dash);
			
		//	if(image_xscale == -1) x -= dash_distance
		//	else if(image_xscale == 1) x+= dash_distance
		
			alarm_set(0, dash_cooldown)
		}
	
	//shooting mechanic
	if(canShoot) {
		if(mouse_check_button(mb_left)) {
			canShoot = false;
			instance_create_layer(x, y, "Instances", obj_bullet);
			alarm[1] = room_speed / shot_interval;
		}
	}
	//dash mechanic
if(instance_exists(obj_dash)) {
	if(distance_to_object(obj_dash) > dash_distance) {
		obj_player.x = obj_dash.x;
		obj_player.y = obj_dash.y;
		instance_destroy(obj_dash);
	}
}

show_debug_message(can_dash)
