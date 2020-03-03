var circleDir = argument0;
var bulletCount = argument1;
var circleSpeed = argument2;
var circleObject = argument3;

var params = scrRedCreateCircleAdditionalParams();
params.Speed = circleSpeed;
scrRedInitializeCircle( oRedS6TargetSource.x, oRedS6TargetSource.y, circleDir, bulletCount, circleObject, params );
