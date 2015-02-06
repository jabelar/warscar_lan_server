/// scrProcessInputCursor()

// show_debug_message("Processing cursor input")

scrSavePreviousInput()
scrInputClearLocal()

if gamepad_axis_value(1, gp_axislv) > 0.05
{
    global.key_backward_local = true ;
}
if gamepad_axis_value(1, gp_axislh) < -0.05
{
    global.key_left_local = true ;
}
if gamepad_axis_value(1, gp_axislh) > 0.05
{
    global.key_right_local = true ;
}        
if gamepad_axis_value(1, gp_axislv) < -0.05
{
    global.key_forward_local = true ;
}

scrProcessInputTriggers()

if scrInputHasChanged()
{
    show_debug_message("Input has changed")
    scrSendLocalInput()
}
