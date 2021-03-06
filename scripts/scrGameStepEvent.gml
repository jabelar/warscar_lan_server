// scrGameStepEvent()

// check for game end conditions
if global.player_score[0] >= global.points_to_win
{
    scrSetMessage("Player 1 wins!")
    global.restart_timer = 3 * room_speed
}
if global.player_score[1] >= global.points_to_win
{
    scrSetMessage("Player 2 Wins!")
    global.restart_timer = 3 * room_speed
}

with objPlayer1 
{
    scrProcessPlayerStep() 
}
with objPlayer2 
{
    scrProcessPlayerStep() 
}
     
// destroy bullets that go outside the room
with objProjectileShell
{
    if (x < 0) or (x > room_width) or (y < 0) or (y > room_height) 
    {
        scrDestroyObject(id)
    }     
}    
