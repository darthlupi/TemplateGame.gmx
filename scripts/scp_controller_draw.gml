//Draw the HUD and what not


//If multipath movement draw the grid for debugging purposes
if ( global.move = "mp" )
{
  draw_set_alpha(0.2);
  mp_grid_draw(global.mp_grid);
  draw_set_alpha(1);
}

//Uncomment if you decide to use the gui surface and scale it.
//Gui surface is always set to the screen size regardless of how the game is scaled.
//It is ideal to display images you DON'T want scaled.
//display_set_gui_size(400, 240);

draw_sprite(spr_hud,-1,x,y);
//Draw the select box based on the grid coordinates.
//This can be removed if you are not using grid based movement.0
if global.move = "grid" then draw_sprite(spr_grid_selection,-1,mouse_grid_x,mouse_grid_y);

draw_set_font(global.font_score);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(x + 10,y + 8, "$" + string(global.points),xscale,yscale,angle );
