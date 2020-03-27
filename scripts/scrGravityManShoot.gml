if instance_exists(objPlayer)
{
 a1=instance_create(x+38,y+18,objGBullet);
 a1.speed=16;
 a1.direction=point_direction(a1.x,a1.y,objPlayer.x,objPlayer.y);
}
