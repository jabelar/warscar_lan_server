// tank movement input

var joy_direction = point_direction(0, 0, gamepad_axis_value(1, gp_axislh), gamepad_axis_value(1, gp_axislv));
var joy_distance = point_distance(0, 0, gamepad_axis_value(1, gp_axislh), gamepad_axis_value(1, gp_axislv));
var ang_diff = angle_difference(joy_direction, image_angle)
    
if joy_distance > 0.1
{
    if abs(ang_diff) < TANK_TURN_SPEED_BASE
    {
        global.key_forward[0] = true ;
    }
    else if abs(ang_diff) > (180 - TANK_TURN_SPEED_BASE * 9)
    {
        global.key_backward[0] = true ;
    }
    else if ang_diff < 0
    {
        global.key_right[0] = true ;
    }
    else if ang_diff > 0
    {
        global.key_left[0] = true ;
    }
}
