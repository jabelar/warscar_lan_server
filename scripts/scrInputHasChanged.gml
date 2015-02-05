///scrInputHasChanged()
var has_changed;

has_changed = (global.key_forward_local != global.key_forward_prev) or (global.key_backward_local != global.key_backward_prev)
has_changed = has_changed or (global.key_right_local != global.key_right_prev) or (global.key_left_local != global.key_left_prev)
has_changed = has_changed or (global.key_turret_right_local != global.key_turret_right_prev) or (global.key_turret_left_local != global.key_turret_left_prev)
// global.key pressed already inherently have processed comparison to previous
has_changed = has_changed or global.key_weapon1_pressed_local or global.key_weapon2_pressed_local
has_changed = has_changed or global.key_weapon3_pressed_local or global.key_flag_local

return has_changed ;

