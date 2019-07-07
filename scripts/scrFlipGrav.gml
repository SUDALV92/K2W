///scrFlipGrav(resetSpeed)
///flips the current gravity
///argument0 - sets whether the game should reset player's speed or not.

var isReset = argument0;

//set gravity
global.grav = -global.grav;

//flip the player
with (objPlayer)
{
    djump = 1;
    if(isReset)
        vspeed = 0;
    jump = abs(jump) * global.grav;
    jump2 = abs(jump2) * global.grav;
    gravity = abs(gravity) * global.grav;
    
    scrSetPlayerMask();
    y += 4 * global.grav;
}
