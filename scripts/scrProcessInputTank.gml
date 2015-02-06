// tank movement input

var joy_direction = point_direction(0, 0, gamepad_axis_value(1, gp_axislh), gamepad_axis_value(1, gp_axislv));
var joy_distance = point_distance(0, 0, gamepad_axis_value(1, gp_axislh), gamepad_axis_value(1, gp_axislv));
var ang_diff = angle_difference(joy_direction, image_angle)

// show_debug_message("Angle difference is "+string(ang_diff))
    
if joy_distance > 0.1
{
    if abs(ang_diff) < current_turn_speed
    {
        global.key_forward_local = true ;
    }
    else if abs(ang_diff) > (180 - current_turn_speed * 9)
    {
        global.key_backward_local = true ;
    }
    else if ang_diff < 0
    {
        show_debug_message("Key right")
        global.key_right_local = true ;
    }
    else if ang_diff > 0
    {
        show_debug_message("Key left")
        global.key_left_local = true ;
    }
}
