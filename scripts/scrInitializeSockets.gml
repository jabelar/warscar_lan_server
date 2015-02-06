/// scrInitializeSockets()

// Create TCP socket for server
global.socket_server = network_create_server(network_socket_tcp, 6511, 32)
if global.socket_server < 0
{
    show_debug_message("Network create for server socket failed")
}
else
{
    show_debug_message("Successfully created server socket = "+string(global.socket_server))
}

// create UDP listener for broadcasts
global.socket_server_udp = network_create_server(network_socket_udp, 6512, 32)
if global.socket_server_udp < 0
{
    show_debug_message("Network create for broadcast listener failed")
}
else
{
    show_debug_message("Succesfully created broadcast listener = "+string(global.socket_server_udp))
}


// Create socket for broadcasts
global.socket_broadcast = network_create_socket(network_socket_udp)
if global.socket_broadcast < 0
{
    show_debug_message("Network create for broadcast socket failed")
}
else
{
    show_debug_message("Succesfully created broadcast socket = "+string(global.socket_broadcast))
}
