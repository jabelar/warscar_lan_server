// show_debug_message("scrProcessPlayerStep starting")

if current_player == PLAYER1
{
    scrProcessInputLocal() 
}
// note that movement scripts below use input variables on server side (after getting input packets)

switch state
{
    case NORMAL:
    {
        scrProcessTankMovement()
        scrProcessTankWeapons()
        scrProcessTankOther()
        
        scrProcessCollisions()
        
        if global.player_health[current_player] <= HEALTH_BASE*0.6
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
        if global.player_health[current_player] <= 0 then state = DYING
        break ;
    }
    case CRITICAL:
    {
        scrProcessTankMovement()
        scrProcessTankWeapons()
        scrProcessTankOther()

        scrProcessCollisions()
        
        if global.player_health[current_player] > 30 then state = NORMAL // happens when health restored
        if global.player_health[current_player] <= 0 then state = DYING
        break ;
    }
    case DYING:
    {
        effect_create_above(ef_explosion, x, y, 1, c_red)
        scrSendCreateEffect(ef_explosion, x, y, 1, c_red)
        
        audio_play_sound_at(sndExplosion, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
        scrSendPlaySound(SOUND_EXPLOSION, x, y)
        
        // abandon flags
        with objParentFlag
        {
            if carrier == other.id
            {
                carrier = noone
                state = FLAG_ABANDONED
            }
        }
        
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
