/// scrProcessInputCursor

if gamepad_axis_value(1, gp_axislv) > 0.05
{
    global.key_backward[0] = true ;
}
if gamepad_axis_value(1, gp_axislh) < -0.05
{
    global.key_left[0] = true ;
}
if gamepad_axis_value(1, gp_axislh) > 0.05
{
    global.key_right[0] = true ;
}        
if gamepad_axis_value(1, gp_axislv) < -0.05
{
    global.key_forward[0] = true ;
}

scrProcessInputTriggers()
