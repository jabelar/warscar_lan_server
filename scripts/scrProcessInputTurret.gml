// turret movement input

var axis_h = gamepad_axis_value(1, gp_axisrh) ;
var axis_v = gamepad_axis_value(1, gp_axisrv) ;
var joy_direction = point_direction(0, 0, axis_h, axis_v);
var joy_distance = point_distance(0, 0, axis_h, axis_v);
var ang_diff = angle_difference(joy_direction, image_angle+angle_main_gun)
if joy_distance > 0.1
{
    if ang_diff < 0 - TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
    {
        global.key_turret_right_local = true
        global.key_turret_left_local = false
    }
    if ang_diff > TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
    {
        global.key_turret_right_local = false
        global.key_turret_left_local = true
    }
}   

