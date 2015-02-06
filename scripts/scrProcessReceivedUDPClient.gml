/// scrProcessReceivedUDPClient(rx_buff, ip_addr_rx, socket_id)
var rx_buff = argument[0];
var ip_addr_rx = argument[1];
var socket_id = argument[2];

var packet_type = buffer_read(rx_buff, buffer_u8)
show_debug_message("Received UDP Packet on client side with packet type = "+string(packet_type))

switch packet_type
{
    case NF_SERVER_ANNOUNCE:
    {
        var server_name = buffer_read(rx_buff, buffer_string)
        if not connected
        {
            show_debug_message("Connecting to server at: "+ip_addr_rx)
            ip_addr_server = ip_addr_rx
            result = network_connect( socket_client, ip_addr_server, 6511 )
            if result < 0
            {
                show_debug_message("Networking connection failed")
            }
            else
            {
                show_debug_message("Networking connection succeeded to server named "+server_name)
                connected = true
            }
        }
        
        // show_debug_message("Server broadcast received from "+ip_addr_rx+", name is "+server_name);
        break;
    }
    default:
    {
        show_debug_message("Unrecognized broadcast packet type received on client side")
    }
}
