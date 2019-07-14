///scrCreateBigKidCherry(left,up,right,down)
///spawns cherries
///argument0 - spawn from left wall?
///argument1 - spawn from up wall?
///argument2 - spawn from rigth wall?
///argument3 - spawn from down wall?
left = argument0;
up = argument1;
right = argument2;
down = argument3;

if(left)
{
    a4=instance_create(-16,random_range(154,454),objGiantkCherry);
    a4.speed=random_range(2,4);
    a4.direction=0;
}
if(up)
{
    a2=instance_create(random_range(96,320),-16,objGiantkCherry);
    a2.speed=random_range(2,5);
    a2.direction=270;
}
if(right)
{
    a1=instance_create(816,random_range(154,454),objGiantkCherry);
    a1.speed=random_range(2,6);
    a1.direction=180;
}
if(down)
{
    a3=instance_create(random_range(96,320),624,objGiantkCherry);
    a3.speed=random_range(2,6);
    a3.direction=90;
}
