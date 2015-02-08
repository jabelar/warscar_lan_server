/// scrInitializeGameVariables()

global.num_human_players = 2
global.points_to_win = 1
global.music_level = 1.0

scrSetMessage("Waiting for clients to join")

gamepad_set_axis_deadzone(1, 0.2);
