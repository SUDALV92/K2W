/// scrRedTweenExpInOut( begin, totalDelta, step, duration )
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

step /= duration / 2;
if( step < 1 ) {
    return beginValue + totalDelta / 2 * power( 2, 10 * ( step - 1 ) );  
} else {
    return beginValue + totalDelta  / 2 * ( 2 - power( 2, -10 * ( step - 1 ) ) );
}
