/// @description Create a bullet
if alarm[0] <= 0 {
	var dir = point_direction(x, y, mouse_x, mouse_y);
	var flipped = (mouse_x > x)*2-1;
	var gun_x = x-4*flipped;
	var x_offset = lengthdir_x(11, dir);
	var y_offset = lengthdir_y(11, dir);

	instance_create_layer(gun_x+x_offset, y+y_offset, "Instances", o_bullet);
	alarm[0] = bullet_cooldown_;
}