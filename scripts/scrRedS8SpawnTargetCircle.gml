var dir = scrRedDirToPlayer( x, y );
var params = scrRedCreateCircleAdditionalParams();
params.Speed = 7;
params.Scale = 1;
scrRedInitializeCircle( x, y, dir, 10, oRedS8TargetBullet, params );
