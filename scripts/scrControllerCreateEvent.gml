// scrControllerCreateEvent()

show_debug_message("scrControllerCreateEvent started")

scrConstants() 
scrInitializeNetworkGameVariables()
scrInitializeNetworking()
scrInitializeGameVariables() 
for (var i=0; i<global.max_num_players; i++)
{
    scrInputClear(i)
}

show_debug_message("scrControllerCreateEvent finished")
