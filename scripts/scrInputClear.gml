/// scrInputClear(player_id)
var player_id = argument[0]

// clear player input
global.key_forward[player_id] = false 
global.key_right[player_id] = false 
global.key_left[player_id] = false 
global.key_backward[player_id] = false 
global.key_turret_left[player_id] = false 
global.key_turret_right[player_id] = false 
global.key_change_spawn[player_id] = false 
global.key_flag[player_id] = false 
global.key_weapon1_pressed[player_id] = false 
global.key_weapon2_pressed[player_id] = false 
global.key_weapon3_pressed[player_id] = false 

