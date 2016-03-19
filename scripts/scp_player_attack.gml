my_attack = instance_create(x,y,obj_machine_gun_shot);
my_attack.range = range;
my_attack.attack = attack;


//Set the range on the attack
with(my_attack)
{
    if range > 0 then alarm[0] = range / speed + 1 else alarm[0] = 0;
}
