/// scrControllerStepEvent()

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


