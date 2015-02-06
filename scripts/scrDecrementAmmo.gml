/// scrDecrementAmmo(player_id, value)
var player_id = argument[0]
var value = argument[1]

global.player_ammo[player_id] -= value
if global.player_ammo[player_id] < 0 then global.player_ammo[player_id] = 0

scrSendHUD()
