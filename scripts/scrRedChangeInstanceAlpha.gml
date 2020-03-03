/// scrRedChangeInstanceAlpha( targetId, targetAlpha, duration, opt_smoothingScript )
var targetId = argument[0];
var targetAlpha = argument[1];
var duration = argument[2];
var smoother = scrRedTweenLinear;
if( argument_count > 3 ) {
    smoother = argument[3];
}

with( targetId ) {
    var command = instance_create( 0, 0, oRedInstanceChangeAlphaCommand );
    command.TargetId = id;
    command.StartAlpha = image_alpha;
    command.DeltaAlpha = targetAlpha - image_alpha;
    command.Step = 0;
    command.Duration = duration;
    command.Smoother = smoother;
    CurrentAlphaCommand = command;
}
