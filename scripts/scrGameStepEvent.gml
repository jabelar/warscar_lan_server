// scrGameStepEvent()

// check for game end conditions
switch global.game_type
{
    case VERSUS:
    {
        if global.player_score[0] >= global.points_to_win
        {
            show_message("Player 1 Wins!")
            game_restart()
        }
        if global.player_score[1] >= global.points_to_win
        {
            show_message("Player 2 Wins!")
            game_restart()
        }
        break ;
    }
    case CAPTURE_THE_FLAG:
    {
        if global.player_score[0] >= global.points_to_win
        {
            show_message("Player 1 Wins!")
            game_restart()
        }
        if global.player_score[1] >= global.points_to_win
        {
            show_message("Player 2 Wins!")
            game_restart()
        }
        break ;
    }
}        


