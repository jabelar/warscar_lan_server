///scrRestart()

// send packet to restart remote client objects
buffer_seek(global.tx_buff_server, buffer_seek_start, 0)
buffer_write(global.tx_buff_server, buffer_u8, NF_RESTART)

for (var i=1; i<global.max_num_players; i++)
{
    if global.player_object[i] >=0
    {
        scrSendPacketToPlayer(global.tx_buff_server, i)
        // show_debug_message("Sending restart packet to player "+string(i+1))
    }
}
