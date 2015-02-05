/// scrSendLocalInput()

buffer_seek(global.tx_buff_local_client, buffer_seek_start, 0)
buffer_write(global.tx_buff_local_client, buffer_u8, NF_INPUT) // send input
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_forward_local)
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_backward_local)
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_right_local)
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_left_local)
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_turret_right_local)
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_turret_left_local)
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_flag_local)
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_weapon1_pressed_local)
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_weapon2_pressed_local)
buffer_write(global.tx_buff_local_client, buffer_bool, global.key_weapon3_pressed_local)

network_send_packet( global.socket_local_client_side, global.tx_buff_local_client, buffer_tell(global.tx_buff_local_client) )

// show_debug_message("Sending player input packet with key_forward = "+string(global.key_forward_local)+" and key_right = "+string(global.key_right_local))
