/// scrMenuCursorStepEvent()

var button_id ;

scrProcessInputCursor()
// note that the input processed will only affect below after received input packet locally

if global.key_forward[0] then y -= 16
if global.key_backward[0] then y += 16
if global.key_right[0] then x += 16
if global.key_left[0] then x -= 16

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

scrInputClearPressed(0)
