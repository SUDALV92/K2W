/// scrRedMoveInstance(targetId, destY, duration, smootherY = scrRedTweenSineInOut)
var targetId = argument[0], destY = argument[1], duration = argument[2];
var smootherY; if (argument_count > 3) smootherY = argument[3]; else smootherY = scrRedTweenSineInOut;

with( targetId ) {
    var command = instance_create( 0, 0, oRedMoveYCommand );
    command.TargetId = id;
    command.StartY = y;
    command.DeltaY = destY - y;
    command.Step = 0;
    command.Duration = duration;
    command.SmootherY = smootherY;
    CurrentMoveYCommand = command;
}
