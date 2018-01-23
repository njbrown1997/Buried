//x,y,radius,object.

column =  2*argument2;
row = 2*argument2;

center_x = argument0+(column*argument3.sprite_width)/2;
center_y = argument1+(row*argument3.sprite_height)/2;

for (i=0;i<column;i++){
    for (j=0;j<row;j++){
        inst = instance_create(argument0 +(argument3.sprite_width*i),argument1 + (argument3.sprite_height*j),argument3);
        if !(collision_circle(center_x,center_y,(column/2)*argument3.sprite_width-1,inst,false,true)) with(inst) instance_destroy();
    }
}
