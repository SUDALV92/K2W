/// scrRedMoveInstance(targetId, destX, duration, smootherX = scrRedTweenSineInOut)
var targetId = argument[0], destX = argument[1], duration = argument[2];
var smootherX; if (argument_count > 3) smootherX = argument[3]; else smootherX = scrRedTweenSineInOut;

with( targetId ) {
    var command = instance_create( 0, 0, oRedMoveXCommand );
    command.TargetId = id;
    command.StartX = x;
    command.DeltaX = destX - x;
    command.Step = 0;
    command.Duration = duration;
    command.SmootherX = smootherX;
    CurrentMoveXCommand = command;
}
