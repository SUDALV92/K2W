/// scrRedTweenBackIn(beginValue, totalDelta, step, duration)
var beginValue = argument0, totalDelta = argument1, step = argument2, duration = argument3;

var s = 1.70158;
var tRatio = step / duration;
return beginValue + totalDelta * tRatio * tRatio * ( ( s + 1 ) * tRatio - s );
