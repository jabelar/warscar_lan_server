/// scrProcessReceivedTCPClient(rx_buff, ip_addr_rx, socket_id)
var rx_buff = argument[0]
var ip_addr_rx = argument[1]
var socket_id = argument[2]

// nothing expected on local client

show_debug_message("TCP packet unexpectedly received by local client")
