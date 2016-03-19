tmp_target = obj_player;

//hspeed = -1.5;

//Set depth
depth = -y;



if ( global.move = "mp" && random(100)> 90  )
{
    target_x = obj_player.x;
    target_y = obj_player.y;
    
    tmp_path_results = mp_grid_path(global.mp_grid, my_path, x, y, target_x, target_y, false);
    if ( tmp_path_results )
    {
      path_start(my_path,1,0,0);
    }
}


///////////////////////
//Kill the enemy if...
///////////////////////

//Off screen left
if x < view_xview[0] -sprite_width and hspeed < 0 then instance_destroy();
//Off screen right
if x > view_xview[0] + view_wview[0] and hspeed > 0 then instance_destroy();
//Out of hit points
if hp <= 0 then instance_destroy();
