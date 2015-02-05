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
    global.key_forward[0] = false
    global.key_backward[0] = false
    global.key_right[0] = false
    global.key_left[0] = false
    global.key_turret_right[0] = false
    global.key_turret_left[0] = false
    global.key_flag[0] = false 
    global.key_weapon1_pressed[0] = false 
    global.key_weapon2_pressed[0] = false 
    global.key_weapon3_pressed[0] = false 
}
