//Check for mouse over
tmp_target = argument[0];

tmp_return = 0;
if ( mouse_x  > tmp_target.bbox_left && mouse_x < tmp_target.bbox_right )
{
    if ( mouse_y  > tmp_target.bbox_top && mouse_y < tmp_target.bbox_bottom )
    {
        tmp_return = 1;
    }
}

return tmp_return;
