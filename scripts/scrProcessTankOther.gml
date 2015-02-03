// pick up or drop own flag
if key_flag
{
    if have_own_flag // drop the flag
    {
        audio_play_sound_at(sndFlag, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
        scrSendPlaySound(SOUND_FLAG, x, y)
        own_flag_id.carrier = noone
        own_flag_id.state = FLAG_ABANDONED
        have_own_flag = false
    }
    // pick up flag if touching
    else if instance_place(x, y, own_flag_id) > 0
    {
        audio_play_sound_at(sndFlag, x, y, 0, room_width*1.5, room_width*2, 1, false, 100)
        scrSendPlaySound(SOUND_FLAG, x, y)
        own_flag_id.carrier = id
        own_flag_id.state = FLAG_RETURNING
        have_own_flag = true
    }
}
        
