/// scrNetworkingConstants()

// packet types to client
// ** THESE MUST BE SAME VALUES ON CLIENT SIDE
globalvar NF_OBJ_CREATE, NF_OBJ_UPDATE, NF_OBJ_DESTROY, NF_SOUND_PLAY;
globalvar NF_EFFECT_CREATE, NF_KICK, NF_HUD;
NF_OBJ_CREATE = 0
NF_OBJ_UPDATE = 1
NF_OBJ_DESTROY = 2
NF_SOUND_PLAY = 3
NF_EFFECT_CREATE = 4
NF_KICK = 5
NF_HUD = 6

// broaccast packet types
globalvar NF_SERVER_ANNOUNCE, NF_CLIENT_ANNOUNCE;
NF_SERVER_ANNOUNCE = 0
NF_CLIENT_ANNOUNCE = 1

// packet types from client
globalvar NF_INPUT;
NF_INPUT = 0

scrNetworkingGameSpecificConstants() 
