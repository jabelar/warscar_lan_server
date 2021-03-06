/// scrReceivedDataPacket(rx_buff, socket_id)
var rx_buff = argument[0];
var socket_id = argument[1];

var rx_buff = argument[0];

var packet_type = buffer_read(rx_buff, buffer_u8);

var player_id = ds_map_find_value(global.socket_client_map, socket_id);

if not is_undefined(player_id)
{
    switch packet_type
    {
        case NF_INPUT:
        {
            global.key_forward[player_id] = buffer_read(rx_buff, buffer_bool)
            global.key_backward[player_id] = buffer_read(rx_buff, buffer_bool)
            global.key_right[player_id] = buffer_read(rx_buff, buffer_bool)
            global.key_left[player_id] = buffer_read(rx_buff, buffer_bool)
            global.key_turret_right[player_id] = buffer_read(rx_buff, buffer_bool)
            global.key_turret_left[player_id] = buffer_read(rx_buff, buffer_bool)
            global.key_flag[player_id] = buffer_read(rx_buff, buffer_bool)
            global.key_weapon1_pressed[player_id] = buffer_read(rx_buff, buffer_bool)
            global.key_weapon2_pressed[player_id] = buffer_read(rx_buff, buffer_bool)
            global.key_weapon3_pressed[player_id] = buffer_read(rx_buff, buffer_bool)
            
            // show_debug_message("Input received from Player "+string(player_id+1)+" key_forward = "+string(global.key_forward[player_id])+ " key_right = "+string(global.key_right[player_id]))
            
            break;
        }
        default: // unrecognized packet type
        {
            show_debug_message("Unrecognized packet type")
        }
    }
}
else
{
    show_debug_message("Received packet from unmapped socket "+string(socket_id))
    scrShowMapContents(global.socket_client_map)
}
