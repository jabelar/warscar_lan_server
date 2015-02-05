/// scrProcessTankMovement()

show_debug_message("scrProcessTankMovement starting for player "+string(current_player+1))

// process movement
// don't move if DYING
if state == DYING then 
{
// do nothing
}
else
{
    image_speed = 0 ;
    
    // slow down if in mud or shallow water
    if instance_place(x, y, objParentHindrance) then
    {
        current_speed = my_speed * 0.5 ;
        current_turn_speed = my_turn_speed * 0.25 ;
    }
    else
    {
        current_speed = my_speed ;
        current_turn_speed = my_turn_speed ;
    }
    
    show_debug_message("Current player = "+string(current_player))
    if global.key_forward[current_player]
    {
        show_debug_message("Moving forward")
        move_contact_solid(direction, current_speed) ;
        tracks_id = instance_create(x, y, objTracks) ;
        tracks_id.image_angle = image_angle ;
        image_speed = 2 ;
        scrSendCreateObject(TRACKS, tracks_id)
    }
    
    if global.key_backward[current_player]
    {
        move_contact_solid(direction+180, current_speed/2) ;
        tracks_id = instance_create(x, y, objTracks) ;
        tracks_id.image_angle = image_angle ;
        image_speed = -1 ;
        scrSendCreateObject(TRACKS, tracks_id)
    }
    
    if global.key_right[current_player]
    {
        direction -= current_turn_speed ;
        image_angle = direction ;
        // but don't turn into an obstacle
        if instance_place(x, y, objParentObstacle)
        {
            // revert the turn
            direction += current_turn_speed ;
            image_angle = direction ;
        }
    }
    
    if global.key_left[current_player]
    {
        direction += current_turn_speed ;
        image_angle = direction ;
        // but don't turn into an obstacle
        if instance_place(x, y, objParentObstacle)
        {
            // revert the turn
            direction -= current_turn_speed ;
            image_angle = direction ;
        }
    }
    
    // process turret movement
    if global.key_turret_left[current_player]
    {
        angle_main_gun += TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
    }
    else if global.key_turret_right[current_player]
    {
        angle_main_gun -= TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
    }

    scrKeepInRoom()
}

// show_debug_message("scrProcessTankMovement finished")
