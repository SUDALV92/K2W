/// scrRedChangeInstanceColor( targetId, targetColor, duration, opt_smoothingScript )
var targetId = argument[0];
var targetColor = argument[1];
var duration = argument[2];
var smoother = scrRedTweenSineInOut;
if( argument_count > 3 ) {
    smoother = argument[3];
}

with( targetId ) {
    var command = instance_create( 0, 0, oRedInstanceChangeColorCommand );
    command.TargetId = id;
    command.StartColor = id.image_blend;
    command.EndColor = targetColor;
    command.Step = 0;
    command.Duration = duration;
    command.Smoother = smoother;
    CurrentColorCommand = command;
}
