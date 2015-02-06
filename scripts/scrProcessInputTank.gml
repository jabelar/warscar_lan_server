// tank movement input

var joy_direction = point_direction(0, 0, gamepad_axis_value(1, gp_axislh), gamepad_axis_value(1, gp_axislv));
var joy_distance = point_distance(0, 0, gamepad_axis_value(1, gp_axislh), gamepad_axis_value(1, gp_axislv));
var ang_diff = angle_difference(joy_direction, image_angle)

// show_debug_message("Angle difference is "+string(ang_diff))
    
if joy_distance > 0.1
{
    if abs(ang_diff) < current_turn_speed
    {
        key_forward= true ;
    }
    else if abs(ang_diff) > (180 - current_turn_speed * 9)
    {
        key_backward= true ;
    }
    else if ang_diff < 0
    {
        show_debug_message("Key right")
        key_right= true ;
    }
    else if ang_diff > 0
    {
        show_debug_message("Key left")
        key_left= true ;
    }
}
