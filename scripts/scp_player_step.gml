image_angle = 0 + hspeed;

//Select sprites
sprite_index = scp_player_sprite_select();


//KO if out of hp
if ( hp <= 0 )
{
    hp = 0;
    tmp_ko = instance_create(x,y,obj_player_ko);
    tmp_ko.sprite_index = sprite_index;
    tmp_ko.depth = depth;
    instance_destroy();
}   

//Movement code
if global.move = "keyboard" then scp_player_keyboard_move();
if ( global.move = "grid" )
{
  if ( mouse_check_button_pressed(mb_left) )
  {
    //my_grid_box.x = obj_controller.mouse_grid_x;
    //my_grid_box.y = obj_controller.mouse_grid_y;
  }
  scp_move_object_on_grid(my_grid_box.x,my_grid_box.y,obj_controller.move_speed);
}  
if global.move = "mouse" then scp_player_mouse_move();
if global.move = "mp" then scp_player_mp_move();


//Set depth
depth = -y;

//RESTRICT PLAYER MOVEMENT
if ( x + hspeed < global.left_border )
{
    hspeed = 0;
    x = global.left_border;
}

if ( bbox_right + hspeed > view_wview[0] + global.right_border )
{
    hspeed = 0;
    x = view_wview[0] + global.left_border - ( bbox_right - x );
}


if ( bbox_bottom + vspeed > global.bottom_border )
{
    vspeed = 0;
    y = global.bottom_border - ( bbox_bottom - y );
}

if ( bbox_top + vspeed < view_yview[0] + global.top_border )
{
    vspeed = 0;
    y =( y - bbox_top + view_yview[0] + global.top_border );
}
