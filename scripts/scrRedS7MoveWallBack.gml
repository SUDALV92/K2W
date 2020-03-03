var isRightWall = argument0;
var duration = argument1;

var targetWall;
var destX;
var spikeObj;
var targetCLine;
var targetFLine;
if( isRightWall ) {
    targetWall = oRedRightBlock;
    destX = 800 - 32;
    spikeObj = oRedS7LeftWallSpike;
    targetCLine = scrRedGetRCLine();
    targetFLine = scrRedGetRFLine();
} else {
    targetWall = oRedLeftBlock;
    destX = 0;
    spikeObj = oRedS7RightWallSpike;
    targetCLine = scrRedGetLCLine();
    targetFLine = scrRedGetLFLine();
}

with( oRedLineImpulse ) {
    if( Line == targetCLine || Line == targetFLine ) {
        scrRedBulletFadeOut( id, 1.5 / duration );
    }
}

with( spikeObj ) {
    scrRedMoveInstance( id, destX, y, duration, scrRedTweenSineIn );
    alarm[0] = duration;
}

with( targetWall ) {
    scrRedMoveInstance( id, destX, y, duration, scrRedTweenSineIn );
}
scrRedMoveInstanceX( targetCLine, targetCLine.xstart, duration, scrRedTweenSineIn );
scrRedMoveInstanceX( targetFLine, targetFLine.xstart, duration, scrRedTweenSineIn );
