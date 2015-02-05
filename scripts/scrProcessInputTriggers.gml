/// scrProcessInputTriggers()

global.key_weapon1_pressed_local = gamepad_button_check_pressed(1, gp_shoulderr) or gamepad_button_check_pressed(1, gp_shoulderrb);
global.key_weapon2_pressed_local = gamepad_button_check_pressed(1, gp_shoulderl) or gamepad_button_check_pressed(1, gp_shoulderlb); 
global.key_weapon3_pressed_local = gamepad_button_check_pressed(1, gp_face3)
global.key_flag_local = gamepad_button_check_pressed(1, gp_face2)
