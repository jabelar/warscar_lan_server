/// scrClientNetworkingEvent()

// show_debug_message("networking event occurred")

var socket_id = ds_map_find_value( async_load, "id" );
var network_event_type = ds_map_find_value(async_load, "type");
var port = ds_map_find_value(async_load, "port");
var ip_addr_rx = ds_map_find_value(async_load, "ip");
var rx_buff = ds_map_find_value(async_load, "buffer");

// show_debug_message("Packet received from ip ="+string(ip_addr_rx)+", socket id ="+string(socket_id)+", port ="+string(port))

if socket_id == socket_client // TCP packet incoming
{
    scrProcessReceivedTCPClient(rx_buff, ip_addr_rx, socket_id)
}
else // UDP packet
{
    scrProcessReceivedUDPClient(rx_buff, ip_addr_rx, socket_id)     
}
