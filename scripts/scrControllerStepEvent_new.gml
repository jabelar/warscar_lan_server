// show_debug_message("Starting step event")

switch room
{
    case roomMenu:
    {
        // check if all players have joined and start game
        if global.wait_for_full_lobby
        {
            if scrGetNumPlayers() >= global.max_num_players
            {
                        if room != roomMain then room_goto(roomMain)
            }
        }
        else
        {
            if scrGetNumPlayers() >= global.min_num_players
            {
                        if room != roomMain then room_goto(roomMain)
            }
        }
        break;
    }
    case roomMain:
    {

        // process new input
        scrProcessInputNew(0) // only player 1 because new input for other players comes through networking event
        
        // send local input to server
        scrSendLocalInput(0)
                   
        // process player attributes
        for (var i=0; i<global.max_num_players; i++)
        {
            if global.player_object[i] >=0
            {
                // process previous input
                scrProcessInputPrevious(i)
                
                 if global.player_health[i] <= 0 // player died
                {
                    with global.player_object[i]
                    {
                        effect_create_above(ef_explosion, x, y, 2, c_red)
                        scrSendCreateEffect(ef_explosion, x, y, 2, c_red)
                        x = irandom(room_width)
                        y = irandom(room_height)
                        while not place_free(x, y)
                        {
                            x = irandom(room_width)
                            y = irandom(room_height)
                        }
                    }
                    // restore health
                    global.player_health[i] = 100
                    
                    // send packet to move player on remote client
                    scrSendPlayerUpdate(global.player_object[i])
                }
            }
        }   
                    
        // process collisions
        scrCheckCollisions()
              
        // destroy bullets that go outside the room
        with objBullet
        {
            if (x < 0) or (x > room_width) or (y < 0) or (y > room_height) 
            {
                scrDestroyObject(id)
            }     
        }    
        break;
    }
}

// check if it is time to send out a server broadcast
global.broadcast_alarm--
if global.broadcast_alarm < 0
{
    scrSendServerBroadcast()
    global.broadcast_alarm = room_speed * 3
}
