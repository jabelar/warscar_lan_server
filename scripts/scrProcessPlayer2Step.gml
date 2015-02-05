// show_debug_message("scrProcessPlayerStep starting")

switch state
{
    case NORMAL:
    {
        scrProcessTankMovement()
        scrProcessTankWeapons()
        scrProcessCollisions()
        scrProcessTankOther()
        if my_health <= HEALTH_BASE*0.6
        {
            state = CRITICAL
            // create smoking effect
            alarm[3]= 1
        }
        else
        {
            // stop smoking
            alarm[3] = -1
        }
        if my_health <= 0 then state = DYING
        break ;
    }
    case CRITICAL:
    {
        scrProcessTankMovement()
        scrProcessTankWeapons()
        scrProcessCollisions()
        scrProcessTankOther()

        if my_health > 30 then state = NORMAL // happens when health restored
        if my_health <= 0 then state = DYING
        break ;
    }
    case DYING:
    {
        effect_create_above(ef_explosion, x, y, 1, c_red)
        scrSendCreateEffect(ef_explosion, x, y, 1, c_red)        marker_id = instance_create(xstart, ystart, objRespawnMarker)
        marker_id.respawn_index = object_index
        // don't need to send packet for created marker as markers aren't represented on client
        audio_play_sound_at(sndExplosion, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
        scrSendPlaySound(SOUND_EXPLOSION, x, y)
        scrDestroyObject(id)
        break ;
    }   
}

scrSendPlayerUpdate(id)

// show_debug_message("scrProcessPlayerStep finished")
