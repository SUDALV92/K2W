/// scrRedTweenExpOut( begin, totalDelta, step, duration )
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

return beginValue + totalDelta * ( 1 - power( 2, -10 * step / duration ) );
