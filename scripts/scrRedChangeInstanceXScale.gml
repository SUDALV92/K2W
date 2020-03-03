/// scrRedChangeInstanceXScale( targetId, targetScale, duration, opt_smoothingScript )
var targetId = argument[0];
var targetScale = argument[1];
var duration = argument[2];
var smoother = scrRedTweenSineInOut;
if( argument_count > 3 ) {
    smoother = argument[3];
}

with( targetId ) {
    var command = instance_create( 0, 0, oRedInstanceChangeXScaleCommand );
    command.TargetId = id;
    command.StartScale = image_xscale;
    command.ScaleDelta = targetScale - image_xscale;
    command.Step = 0;
    command.Duration = duration;
    command.Smoother = smoother;
    CurrentXScaleCommand = command;
}
