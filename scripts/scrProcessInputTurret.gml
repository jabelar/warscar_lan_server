// turret movement input

var joy_direction = point_direction(0, 0, gamepad_axis_value(1, gp_axisrh), gamepad_axis_value(1, gp_axisrv));
var joy_distance = point_distance(0, 0, gamepad_axis_value(1, gp_axisrh), gamepad_axis_value(1, gp_axisrv));
var ang_diff = angle_difference(joy_direction, image_angle+angle_main_gun)
if joy_distance > 0.1
{
    if ang_diff < 0 - TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
    {
        global.key_turret_right[0] = true
        global.key_turret_left[0] = false
    }
    if ang_diff > TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
    {
        global.key_turret_right[0] = false
        global.key_turret_left[0] = true
    }
}   
