/// scrInitializeInputBooleans()

// local client side view of the booleans
global.key_forward_local = false
global.key_backward_local = false
global.key_right_local = false
global.key_left_local = false
global.key_turret_right_local = false
global.key_turret_left_local = false
global.key_flag_local = false 
global.key_weapon1_pressed_local = false 
global.key_weapon2_pressed_local = false 
global.key_weapon3_pressed_local = false 
global.key_forward_prev = false
global.key_backward_prev = false
global.key_right_prev = false
global.key_left_prev = false
global.key_turret_right_prev = false
global.key_turret_left_prev = false
global.key_flag_prev = false 
global.key_weapon1_pressed_prev = false 
global.key_weapon2_pressed_prev = false 
global.key_weapon3_pressed_prev = false 

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
