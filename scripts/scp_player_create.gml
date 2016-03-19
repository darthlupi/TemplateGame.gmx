move_speed = 2;
image_speed = 0.5;

//Stats
hp_max = global.hp_max[0];
reload = global.reload[0];
attack = global.attack[0];
armor = global.armor[0];
range = global.range[0];
regen = global.regen[0];
mana = global.mana[0];
mana_regen = global.mana_regen[0];
hp = hp_max;

//Trigger the attack
alarm[1] = reload;
//Regen triger
regen_timer = 200;
alarm[2] += regen_timer;


//Movement target for mouse and grid based movement
target_x = x;
target_y = y;

//Grid variables
//Collision object used to move along the grid
my_grid_box = instance_create(x,y,obj_grid_box);
my_grid_box.parent = id;
move_ready = 20;

//Only used for multipathmovement :)
my_path = path_add();
path_ln = path_get_length(my_path);
path_ln = 1;
path_alpha = 1;


player_offset_x = 0;
player_offset_y = 0;
