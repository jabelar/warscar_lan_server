if room = roomMain
{
    draw_set_color(c_yellow)
    draw_set_font(fontMilitaryStencil)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_text(5, 5, "Score = "+string(global.player_score[0]))
    draw_text(5, 35, "Ammo = "+string(global.ammo_main_gun[0]))
    draw_text(display_get_gui_width()/2+5, 5, "Score = "+string(global.player_score[1]))
    draw_text(display_get_gui_width()/2+5, 35, "Ammo = "+string(global.ammo_main_gun[1]))
}
