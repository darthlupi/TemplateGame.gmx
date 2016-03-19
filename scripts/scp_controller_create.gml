game_state = 0;

my_selection_thingy = instance_create(mouse_x,mouse_y,obj_selection_thingy);


/*
//Start position of the player
start_x = 96;
start_y = 96;

//Create the player object
my_player = instance_create(start_x,start_y,obj_player);
*/

//Text variables
xscale=1;
yscale=1;
angle =0;

//Set the movement type to mouse, keyboard, or grid
global.move = "grid"

//This is used only if you are doing grid based movement mouse movement :)
//You can remove it if you are not doing gride based movement
if global.move = "grid" then scp_controller_grid_create();

//If you are using multipathing
if global.move = "mp" then scp_controller_mp_create();
