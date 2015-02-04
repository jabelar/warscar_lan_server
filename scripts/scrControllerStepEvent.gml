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

// check if it is time to send out a server broadcast
global.broadcast_alarm--
if global.broadcast_alarm < 0
{
    scrSendServerBroadcast()
    global.broadcast_alarm = room_speed * 3
}