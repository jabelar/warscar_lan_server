///scrKickToSocket(socket_id)
var socket_id = argument[0]

// send packet to destroy remote client objects
buffer_seek(global.tx_buff_server, buffer_seek_start, 0)
buffer_write(global.tx_buff_server, buffer_u8, NF_KICK)

scrSendPacketToSocket(global.tx_buff_server, socket_id)

// need to figure out how to get the right player object from socket argument
//    scrSendDestroyObject(global.player_object[argument[0]]}