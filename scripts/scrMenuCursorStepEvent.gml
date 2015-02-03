// need to react to any input type
// so check them all

var button_id ;

scrProcessInputCursor()

if key_forward then y -=8
if key_backward then y += 8
if key_right then x += 8
if key_left then x -= 8

scrKeepInRoom()

// cycle through options on each click of a button
if key_weapon1_pressed
{
    button_id = instance_position(x, y, objParentButton)
    with button_id
    {
        image_index += 1
        if image_index >= image_number then image_index = 0
    }
    
}

// process starting the game   
if key_weapon1_pressed and instance_position(x, y, objButtonPlay)
{
    room_goto(roomMain)
}
