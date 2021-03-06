/// scrProcessCollisions()

// process collisions of players with things
item_id = instance_place(x, y, objItemHealth)
if item_id > 0 // hit item
{
    scrIncrementHealth(current_player, 20)
    audio_play_sound_at(sndItem, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
    scrSendPlaySound(SOUND_ITEM, x, y)
    scrDestroyObject(item_id)

    // respawn in random location
    new_item_id = instance_create(random(room_width), random(room_height), objItemHealth)
    // make sure in free location
    with (new_item_id)
    {
        while (not place_free(x, y))
        {
            x = random(room_width)
            y = random(room_height)
        }
    }
    scrSendCreateObject(HEALTH, new_item_id)
}

item_id = instance_place(x, y, objItemAmmo)
if item_id > 0 // hit item
{
    scrIncrementAmmo(current_player, 10)
    audio_play_sound_at(sndItem, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
    scrSendPlaySound(SOUND_ITEM, x, y)
    scrDestroyObject(item_id)

    // respawn in random location
    new_item_id = instance_create(random(room_width), random(room_height), objItemAmmo)
    // make sure in free location
    with (new_item_id)
    {
        while (not place_free(x, y))
        {
            x = random(room_width)
            y = random(room_height)
        }
    }
    scrSendCreateObject(AMMO, new_item_id)
}

// figure out which flag is which
if current_player = PLAYER1
{
    if instance_exists(objFlagRed) then own_flag_id = objFlagRed.id
    if instance_exists(objFlagBlue) then enemy_flag_id = objFlagBlue.id
}
else // player 2
{
    if instance_exists(objFlagBlue) then own_flag_id = objFlagBlue.id
    if instance_exists(objFlagRed) then enemy_flag_id = objFlagRed.id
}
       
// check if hit enemy flag
flag_id = instance_place(x, y, enemy_flag_id)
if flag_id > 0 // hit enemy flag
{
    switch flag_id.state
    {
        case FLAG_HOME:
        {
            // pick it up
            audio_play_sound_at(sndFlag, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
            scrSendPlaySound(SOUND_FLAG, x, y)
            flag_id.state = FLAG_CAPTURED
            have_enemy_flag = true
            flag_id.carrier = id
            break ;
        }
        case FLAG_CAPTURED:
        {
            // do nothing
            break ;
        }
        case FLAG_ABANDONED:
        {
            // pick it up
            audio_play_sound_at(sndFlag, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
            scrSendPlaySound(SOUND_FLAG, x, y)
            flag_id.state = FLAG_CAPTURED
            have_enemy_flag = true
            flag_id.carrier = id
            break ;
        }
        case FLAG_RETURNING:
        {
            // do nothing
            break ;
        }
    }
}

hazard_id = instance_place(x, y, objParentHazard)
if hazard_id > 0 // hit hazard
{
    state = DYING
    if hazard_id.object_index = objLandMine
    {
        scrDestroyObject(hazard_id)
    }
}

base_id = instance_place(x, y, objParentBase)
if base_id > 0 // hit home base
{
    // check if enemy or own base
    if base_id.my_team = my_team // our own base
    {
        // deposit any returning or captured flag
        with (objParentFlag)
        {
            // check if being carried by this tank
            if carrier = other.id 
            {
                if state = FLAG_CAPTURED
                {
                    scrIncrementScore(other.current_player, 1)
                    audio_play_sound_at(sndFanfare, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
                    scrSendPlaySound(SOUND_FANFARE, x, y)
                    state = FLAG_HOME
                    carrier = noone
                    other.have_enemy_flag = false
                    // return it to starting position
                    x = xstart
                    y = ystart
                }
            }
        }
    }
    else // enemy base
    {
        // do nothing
    }
}    