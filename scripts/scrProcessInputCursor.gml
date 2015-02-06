/// scrProcessInputCursor()

// show_debug_message("Processing cursor input")

scrSavePreviousInput()
scrInputClear()

if gamepad_axis_value(1, gp_axislv) > 0.05
{
    key_backward= true ;
}
if gamepad_axis_value(1, gp_axislh) < -0.05
{
    key_left= true ;
}
if gamepad_axis_value(1, gp_axislh) > 0.05
{
    key_right= true ;
}        
if gamepad_axis_value(1, gp_axislv) < -0.05
{
    key_forward= true ;
}

scrProcessInputTriggers()

if scrInputHasChanged()
{
    show_debug_message("Input has changed")
    scrSendLocalInput()
}
