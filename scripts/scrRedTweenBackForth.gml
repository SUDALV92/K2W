/// scrRedTweenBackForth( begin, totalDelta, step, duration )
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

var halfDuration = duration / 2;
if( step <= halfDuration ) {
    return scrRedTweenSineInOut( beginValue, totalDelta, step, halfDuration );
} else {
    return scrRedTweenSineInOut( beginValue + totalDelta, -totalDelta, step - halfDuration, halfDuration );
}
