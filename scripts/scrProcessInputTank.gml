// tank movement input

var joy_direction = point_direction(0, 0, gamepad_axis_value(contrl_num, gp_axislh), gamepad_axis_value(contrl_num, gp_axislv));
var joy_distance = point_distance(0, 0, gamepad_axis_value(contrl_num, gp_axislh), gamepad_axis_value(contrl_num, gp_axislv));
var ang_diff = angle_difference(joy_direction, image_angle)
    
if joy_distance > 0.1
{
    if abs(ang_diff) < TANK_TURN_SPEED_BASE
    {
        key_forward = true ;
    }
    else if abs(ang_diff) > (180 - TANK_TURN_SPEED_BASE * 9)
    {
        key_backward = true ;
    }
    else if ang_diff < 0
    {
        key_right = true ;
    }
    else if ang_diff > 0
    {
        key_left = true ;
    }
}
