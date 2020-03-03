/// scrRedMoveInstance(targetId, destX, destY, duration, smootherX = scrRedTweenSineInOut, smootherY = smootherX)
var targetId = argument[0], destX = argument[1], destY = argument[2], duration = argument[3];
var smootherX; if (argument_count > 4) smootherX = argument[4]; else smootherX = scrRedTweenSineInOut;
var smootherY; if (argument_count > 5) smootherY = argument[5]; else smootherY = smootherX;

scrRedMoveInstanceX( targetId, destX, duration, smootherX );
scrRedMoveInstanceY( targetId, destY, duration, smootherY );
