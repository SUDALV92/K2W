var wallX = argument0;

var circleCount = 25;
var radius = 200;
var dirDelta = 360 / circleCount;

var currentDir = random( 360 );
var currentCurve = choose( -0.25, 0.25 );
for( var i = 0; i < circleCount; i++ ) {
    var circleX = wallX + lengthdir_x( radius, currentDir );
    circleX = clamp( circleX, 0, 800 );
    var circleY = 303 + lengthdir_y( radius, currentDir );
    scrRedS15CreateCircleSpike( circleX, circleY, currentDir, currentCurve, 6 );
    scrRedS15CreateCircleSpike( circleX, circleY, currentDir, -currentCurve, 5 );
    scrRedS15CreateCircleSpike( circleX, circleY, currentDir, currentCurve, 4 );
    
    currentDir += dirDelta;
}
