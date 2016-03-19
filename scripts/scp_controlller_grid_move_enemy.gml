//Move enemies
//This should ALWAYS move enemies from the bottom up to over false collisions.

tmp_array = scp_obj_array(obj_grid_box);

//Calculate the number of grid cells going vertically
tmp_check_count = round(room_height / grid_size_y);

//Assign tmp_check_y the value of all vertical grid cells.
//Assign them going from greaterst to least.  This makes the enemy on the bottom
//move first in order to make collision make more sense.
for ( tmp_check_y = tmp_check_count * grid_size_y;tmp_check_y >= 0;tmp_check_y-=grid_size_y)
{
    //Loop through enemy array
    for ( i = 0; i < array_length_1d(tmp_array);i+=1)
    {

        //Check to make sure the enemy exists
        if ( instance_exists(tmp_array[i]) )
        {
            //Check to see if the y of the grid_box is what we are checking AND
            //make sure this is a box for an enemy.
            if ( tmp_array[i].y = tmp_check_y && object_is_ancestor(tmp_array[i].parent.object_index,obj_enemy) )
            {
              with ( tmp_array[i] )
              {
                //Check for collisions and move IF ready to move again
                if ( alarm[0] <= 0 && !place_meeting(x,y + obj_controller.grid_size_y, obj_grid_box) )
                {
                    y += obj_controller.grid_size_y;
                    moving = 1;
                    alarm[0] = 150;
                }
              }
            }      
        } 
    }
}
