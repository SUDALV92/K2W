/// scrRedTweenSineInOut( begin, totalDelta, step, duration )
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

return beginValue - totalDelta / 2 * ( cos( pi * step / duration ) - 1 );
