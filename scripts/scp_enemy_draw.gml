color = c_white;

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


draw_sprite_ext(sprite_index,-1,x + tmp_rand,y + tmp_rand,image_xscale,image_yscale,image_angle,color,image_alpha);

draw_sprite(spr_shadow_small,-1,x,bbox_bottom);
