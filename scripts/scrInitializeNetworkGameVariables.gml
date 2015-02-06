/// scrInitializeNetworkGameVariables()

global.max_num_players = 2
global.min_num_players = 2
global.wait_for_full_lobby = true
global.allow_join_ingame = false

randomize()

// initialize player attributes
for (var i=0; i<global.max_num_players; i++)
{
    global.player_score[i] = 0
    global.player_health[i] = HEALTH_BASE
    global.player_ammo[i] = 10
    global.player_hurt_timer[i] = -1
    global.player_color[i] = make_color_hsv(irandom(255), 255, 255)
}

// initialize player attributes
for (var i=0; i<global.max_num_players; i++)
{
    global.player_score_prev[i] = 0
    global.player_health_prev[i] = 100
    global.player_ammo_prev[i] = 10
    global.player_hurt_timer_prev[i] = -1
    global.player_color_prev[i] = make_color_hsv(irandom(255), 255, 255)
}
