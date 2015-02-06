/// scrProcessInputLocal()

// show_debug_message("scrProcessInput starting")

scrSavePreviousInput() 
scrInputClearLocal()

scrProcessInputTank()
scrProcessInputTurret()
scrProcessInputTriggers()
scrProcessInputOther()

if scrInputHasChanged()
{
    show_debug_message("Local input changed")
    scrSendLocalInput()
}

// show_debug_message("scrProcessInput finished")
