// show_debug_message("scrProcessPlayerStep starting")

// note that movement scripts below use input variables on server side (after getting input packets)

switch state
{
    case NORMAL:
    {
        scrProcessTankMovement()
        scrProcessTankWeapons()
        scrProcessTankOther()
        
        scrProcessCollisions()
        
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
        scrProcessTankOther()

        scrProcessCollisions()
        
        if my_health > 30 then state = NORMAL // happens when health restored
        if my_health <= 0 then state = DYING
        break ;
    }
    case DYING:
    {
        effect_create_above(ef_explosion, x, y, 1, c_red)
        scrSendCreateEffect(ef_explosion, x, y, 1, c_red)
        
        audio_play_sound_at(sndExplosion, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
        scrSendPlaySound(SOUND_EXPLOSION, x, y)
        
        // respawn player
        x = xstart
        y = ystart
        direction = 0
        image_angle = 0
        scrPlayerCreateEvent()
        break ;
    }   
}

scrInputClearPressed(current_player)
scrSendPlayerUpdate(id)

// show_debug_message("scrProcessPlayerStep finished")
