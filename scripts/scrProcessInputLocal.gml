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
    scrSendLocalInput()
}

// show_debug_message("scrProcessInput finished")
