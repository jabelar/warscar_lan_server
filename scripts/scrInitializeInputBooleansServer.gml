/// scrInitializeInputBooleansServer()

// server side view of the booleans
for (var i=0; i<global.max_num_players; i++)
{
    global.key_forward[i] = false
    global.key_backward[i] = false
    global.key_right[i] = false
    global.key_left[i] = false
    global.key_turret_right[i] = false
    global.key_turret_left[i] = false
    global.key_flag[i] = false 
    global.key_weapon1_pressed[i] = false 
    global.key_weapon2_pressed[i] = false 
    global.key_weapon3_pressed[i] = false 
}
