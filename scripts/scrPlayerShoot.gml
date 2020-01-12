if (instance_number(objBullet) < 4)
{
    instance_create(x,y,objBullet);
    switch(room)
    {
     case rBoss7Phase4Pre:
     case rBoss7Phase4:
      break;
     default: audio_play_sound(global.sndShoot,0,false);
    }
}
