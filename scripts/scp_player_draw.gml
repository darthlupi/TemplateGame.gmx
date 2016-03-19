color = c_white;


//Draw the sprite
tmp_rand = 0;
//Only use the first 4 images for normal animations
if ( image_index > 3 )
{
    image_index = 0;
}
//If hurt
if (alarm[0])
{
    tmp_rand = -2 + random(4);
    image_index = 4;
}

//Only used for multipathing
//draw_path(my_path,x,y,true);

draw_set_alpha(path_alpha);
for ( i = 0; i<=1;i+= 10/path_ln )
{
  tmp_x = path_get_x(my_path, i);
  tmp_y = path_get_y(my_path, i);
  draw_circle(tmp_x,tmp_y,2,false);
}
draw_set_alpha(1);



draw_sprite_ext(sprite_index,-1,x + tmp_rand,y + tmp_rand,image_xscale,image_yscale,image_angle,color,image_alpha);
