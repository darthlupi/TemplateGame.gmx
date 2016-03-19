//Mouse based movement


//Set target coordinates
if ( mouse_check_button(mb_left) && mouse_y < global.bottom_border  )
{
    target_x = mouse_x;
    target_y = mouse_y;
}

//Set speed if you are not on target
if ( point_distance(x,y,target_x,target_y) > move_speed )
{
    speed = move_speed;
    direction = point_direction(x,y,target_x, target_y);
}
else
{
    speed = 0;
    x = target_x;
    y = target_y;
}
