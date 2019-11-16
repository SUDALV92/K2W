//kills the player

if (instance_exists(objPlayer) && !global.godMode)
{
    if (global.gameStarted) //normal death
    {
        f = false;
        switch(room)
        {
            case rBoss6GravityMan:
             audio_pause_sound(global.currentMusic);
             audio_play_sound(global.sndGravDeath,0,0);
             with (objPlayer)
             {
              instance_create(x,y,objBloodEmitter);
              instance_destroy();
             }
             f = true;
             break;
            case rBoss6Phase2:
             if(instance_exists(objArr) && objArr.visible) //смерть после прохождения градиуса
              break;
              
             audio_pause_sound(global.currentMusic);
             global.gameOverMusic = audio_play_sound(global.sndGradiusGameOver,0,0);
             with (objPlayer)
             {              
              instance_destroy();
             }
             f = true;
             break;
        }
        if(!f)
        {
            global.deathSound = audio_play_sound(global.sndDeath,0,false);
        
            if (!global.muteMusic)  //play death music
            {                
                if (global.deathMusicMode == 1) //instantly pause the current music
                {
                    audio_pause_sound(global.currentMusic);
            
                    global.gameOverMusic = audio_play_sound(global.sndGameOver,1,false);
                }
                else if (global.deathMusicMode == 2)    //fade out the current music
                {                
                    with (objWorld)
                        event_user(0);  //fades out and stops the current music
            
                    global.gameOverMusic = audio_play_sound(global.sndGameOver,1,false);
                }                
            }
            with (objPlayer)
            {
            instance_create(x,y,objBloodEmitter);
            instance_destroy();
            }
        }
        
        with(objExBoss3_Gradius)
        {
         instance_destroy();
        }
        
        instance_create(0,0,objGameOver);
        
        global.death += 1; //increment deaths
            
        scrSaveGame(false); //save death/time
    }
    else    //death in the difficulty select room, restart the room
    {
        with(objPlayer)
            instance_destroy();
            
        room_restart();
    }
}
