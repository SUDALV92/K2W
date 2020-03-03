/// scrRedShakeViewX(yDiff, duration, smoother = scrRedTweenBackForth)
var yDiff = argument[0], duration = argument[1];
var smoother; if (argument_count > 2) smoother = argument[2]; else smoother = scrRedTweenBackForth;
var shaker = instance_create( 0, 0, oRedViewYShaker );
shaker.StartY = view_yview[0];
shaker.MaxY = yDiff - shaker.StartY;
shaker.Duration = duration;
shaker.Smoother = smoother;
