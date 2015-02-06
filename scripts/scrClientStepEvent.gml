/// scrClientStepEvent()

scrSavePreviousInput()
scrInputClear() 

switch room
{
    case roomMenu: scrProcessInputCursor(); break;
    case roomMain: scrProcessInput(); break;
    default: show_debug_message("Unhandled room"); break;
}

if connected
{
    if scrInputHasChanged()
    {
        show_debug_message("Input has changed")
        scrSendLocalInput()
    }
}

