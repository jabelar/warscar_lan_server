///scrSendPlaySound(sound_type, x, y)
var sound_type = argument[0]
var sound_x = argument[1]
var sound_y = argument[2]

buffer_seek(global.tx_buff_server, buffer_seek_start, 0)
buffer_write(global.tx_buff_server, buffer_u8, NF_SOUND_PLAY)
buffer_write(global.tx_buff_server, buffer_u8, sound_type)
buffer_write(global.tx_buff_server, buffer_u32, sound_x)
buffer_write(global.tx_buff_server, buffer_u32, sound_y)

scrSendPacketToAll(global.tx_buff_server)