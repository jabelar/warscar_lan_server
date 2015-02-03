// show_debug_message("scrProcessInput starting")
scrInputClear()
    if room == roomMenu
    {
        contrl_num = 1
    }
    else 
    {
        if current_player == PLAYER1
        {
                contrl_num = 1
        }
        else // PLAYER2
        {
            contrl_num = 2
        }
    }

    scrProcessInputTank()
    scrProcessInputTurret()
    scrProcessInputTriggers()
    scrProcessInputOther()

// show_debug_message("scrProcessInput finished")
