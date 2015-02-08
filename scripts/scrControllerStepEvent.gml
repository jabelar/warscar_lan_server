/// scrControllerStepEvent()

// show_debug_message("Controller step event starting")

// behave differently depending on which room you're in (controller is persistent)
switch room
{
    case roomMenu:
    {
        scrMainMenuStepEvent()
        break ;
    }
    case roomMain:
    {
        scrGameStepEvent()
        break;
    }
}


scrDeactivateObjectsOutsideView() 

// check if it is time to erase message
if global.restart_timer >= 0
{
    global.restart_timer--
    if global.restart_timer < 0
    {
        scrSendRestart()
        game_restart()
    }
}


// check if it is time to erase message
if global.message_string != ""
{
    global.message_timer--
    if global.message_timer < 0
    {
        global.message_string = ""
        scrSendHUD()
    }
}

// check if it is time to send out a server broadcast
global.broadcast_alarm--
if global.broadcast_alarm < 0
{
    scrSendServerBroadcast()
    global.broadcast_alarm = room_speed * 3
}
