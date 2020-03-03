/// scrRedShakeViewAngle(angle, duration, smoother = scrRedTweenBackForth;)
var angle = argument[0], duration = argument[1];
var smoother; if (argument_count > 2) smoother = argument[2]; else smoother = scrRedTweenBackForth;;

var shaker = instance_create( 0, 0, oRedViewAngleShaker );
shaker.StartAngle = view_angle[0];
shaker.AngleDelta = angle - shaker.StartAngle;
shaker.Duration = duration;
shaker.Smoother = smoother;

