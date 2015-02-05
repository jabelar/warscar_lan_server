/// scrProcessInputTriggers()

global.key_weapon1_pressed[0] = gamepad_button_check_pressed(1, gp_shoulderr) or gamepad_button_check_pressed(1, gp_shoulderrb);
global.key_weapon2_pressed[0] = gamepad_button_check_pressed(1, gp_shoulderl) or gamepad_button_check_pressed(1, gp_shoulderlb); 
global.key_weapon3_pressed[0] = gamepad_button_check_pressed(1, gp_face3)
global.key_flag[0] = gamepad_button_check_pressed(1, gp_face2)
