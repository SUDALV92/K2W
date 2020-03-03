/// scrRedShakeViewX(xDiff, duration, smoother = scrRedTweenBackForth)
var xDiff = argument[0], duration = argument[1];
var smoother; if (argument_count > 2) smoother = argument[2]; else smoother = scrRedTweenBackForth;
var shaker = instance_create( 0, 0, oRedViewXShaker );
shaker.StartX = view_xview[0];
shaker.MaxX = xDiff - shaker.StartX;
shaker.Duration = duration;
shaker.Smoother = smoother;
