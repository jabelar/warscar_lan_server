with objHomeBaseTeam1
{
    show_debug_message("Creating player flag for red team")
    instance_create(x+sprite_width/2, y+sprite_height/2, objFlagRed)
    instance_create(x+sprite_width/2, y+sprite_height/2, objPlayer1)
}

with objHomeBaseTeam2
{
    show_debug_message("Creating player flag for blue team")
    instance_create(x+sprite_width/2, y+sprite_height/2, objFlagBlue)
    instance_create(x+sprite_width/2, y+sprite_height/2, objPlayer2)
}

scrPopulateBuildings()

scrPopulateItems()

scrSendCreateAll()
