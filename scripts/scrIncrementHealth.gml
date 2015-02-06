/// scrIncrementHealth(player_id, value)
var player_id = argument[0]
var value = argument[1];

global.player_health[player_id] += value
if global.player_health[player_id] > HEALTH_BASE then global.player_health[player_id] = HEALTH_BASE

scrSendHUD()
