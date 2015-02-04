// show_debug_message("scrProcessTankMovement starting")
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
    
    if key_forward
    {
        move_contact_solid(direction, current_speed) ;
        tracks_id = instance_create(x, y, objTracks) ;
        tracks_id.image_angle = image_angle ;
        image_speed = 2 ;
        scrSendCreateObject(TRACKS, tracks_id)
    }
    
    if key_backward
    {
        move_contact_solid(direction+180, current_speed/2) ;
        tracks_id = instance_create(x, y, objTracks) ;
        tracks_id.image_angle = image_angle ;
        image_speed = -1 ;
        scrSendCreateObject(TRACKS, tracks_id)
    }
    
    if key_right
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
    
    if key_left
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
    if key_turret_left
    {
        angle_main_gun += TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
    }
    else if key_turret_right
    {
        angle_main_gun -= TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
    }

    scrKeepInRoom()
}

// show_debug_message("scrProcessTankMovement finished")