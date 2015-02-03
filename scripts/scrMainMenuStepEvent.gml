/// scrMainMenuStepEvent

// check if all players have joined and start game
if global.wait_for_full_lobby
{
    if scrGetNumPlayers() >= global.max_num_players
    {
                if room != roomMain then room_goto(roomMain)
    }
}
else
{
    if scrGetNumPlayers() >= global.min_num_players
    {
                if room != roomMain then room_goto(roomMain)
    }
}

// perform step events for each object
with objCursor
{
    scrMenuCursorStepEvent()
}
with objButtonMusicLevel
{
    scrButtonMusicLevelStepEvent()
}
with objButtonPoints
{
    scrButtonPointsStepEvent()
}

