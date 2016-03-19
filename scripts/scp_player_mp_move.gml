//Set target coordinates
if ( mouse_check_button(mb_left) && mouse_y < global.bottom_border  )
{
    target_x = mouse_x;
    target_y = mouse_y;
    
    tmp_path_results = mp_grid_path(global.mp_grid, my_path, x, y, target_x, target_y, false);
    if ( tmp_path_results )
    {
      path_start(my_path,2,0,0);
      
    }
    //Path length is used to draw the path
    path_ln = path_get_length(my_path);
    if path_ln = 0 then path_ln = 0.001;
    path_alpha = 1;
}
path_alpha -= 0.1;
