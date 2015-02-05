// need to react to any input type
// so check them all

var button_id ;

scrProcessInputCursor()

if global.key_forward[0] then y -=8
if global.key_backward[0] then y += 8
if global.key_right[0] then x += 8
if global.key_left[0] then x -= 8

scrInputClear(0)

scrKeepInRoom()

// cycle through options on each click of a button
if global.key_weapon1_pressed[0]
{
    button_id = instance_position(x, y, objParentButton)
    with button_id
    {
        image_index += 1
        if image_index >= image_number then image_index = 0
    }
    
}

// process starting the game   
if global.key_weapon1_pressed[0] and instance_position(x, y, objButtonPlay)
{
    room_goto(roomMain)
}
