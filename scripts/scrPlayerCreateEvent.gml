/// scrPlayerCreateEvent

show_debug_message("scrPlayerCreateEvent starting for player = "+string(current_player))

if current_player == PLAYER1
{
    body_sprite = sprHuskyRed
}
else
{
    body_sprite = sprHuskyBlue
}

has_main_gun = true

input_forward = vk_up
input_right = vk_right
input_left = vk_left
input_backward = vk_down
input_fire1 = vk_control
input_fire2 = vk_alt
input_fire3 = vk_space
input_change_spawn = ord('S')
input_flag = ord('F')

my_speed = TANK_SPEED_BASE
my_turn_speed = TANK_TURN_SPEED_BASE
current_speed = my_speed
current_turn_speed = my_turn_speed
global.ammo_main_gun[current_player] = 10
my_score = 0
my_health = HEALTH_BASE
state = NORMAL

// offsets to ensure weapons launch from correct part
angle_main_gun = 0
offset_distance_main_gun = 64

// initialize flag states
have_enemy_flag = false
have_own_flag = false

show_debug_message("scrPlayerCreateEvent finished")
