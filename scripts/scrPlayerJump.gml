if (place_meeting(x,y+(global.grav),objBlock) || onPlatform || place_meeting(x,y+(global.grav),objWater))
{
    if(global.vvvvvv)
    {
        scrFlipGrav(true);
        vspeed = jump;
        djump = 0;
        audio_play_sound(global.sndVVVVVV,0,false);
    }
    else
    {
        vspeed = -jump;
        djump = 1;
        audio_play_sound(global.sndJump,0,false);
    }
    if instance_exists(objKtgKiller1){objKtgKiller1.C=1;}
    if instance_exists(objKtgKiller3){objKtgKiller3.C=1;}
}
else if (!global.vvvvvv && !global.noDJump && (djump == 1 || place_meeting(x,y+(global.grav),objWater2) || global.infJump))
{
    vspeed = -jump2;
    sprite_index = spriteJump;
    audio_play_sound(global.sndDJump,0,false);
    
    if (!place_meeting(x,y+(global.grav),objWater3))
        djump = 0;  //take away the player's double jump
    else
        djump = 1;  //replenish djump if touching water3
    if instance_exists(objKtgKiller1){objKtgKiller1.C=1;}
    if instance_exists(objKtgKiller3){objKtgKiller3.C=1;}
}
