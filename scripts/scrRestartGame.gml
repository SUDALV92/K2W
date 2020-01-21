///restarts the game

if (surface_exists(global.pauseSurf))
    surface_free(global.pauseSurf);  //free pause surface in case the game is currently paused

//game_restart();
with(all)
{
 if(id != other.id)
  instance_destroy();
}
room_goto(rTitle);
event_user(1);
speedrunFlag = -1;
oldScore = 0;
oldPlayerExists = 0;
deadSplitFlag = 0;
drawEnergy = false;
