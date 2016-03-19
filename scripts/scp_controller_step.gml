if ( keyboard_check_pressed(ord('R') ) )
{
    game_restart();
}

//If a coin was collected
//do a little effect for the text for score:)
if ( alarm[1] )
{
    xscale = 1.05;
    yscale = 1.05;
}
else
{
    xscale = 1;
    yscale = 1;
}

//Uncomment this if you want grid mouse movement
if global.move = "grid" then scp_controller_grid_mouse();
if global.move = "grid" then scp_controller_grid_move();


