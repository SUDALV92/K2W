var dir = scrRedDirToPlayer( x, y );
var params = scrRedCreateCircleAdditionalParams();
params.Speed = 14;
params.Scale = 1;
scrRedInitializeCircle( x, y, dir, 16, oRedS8TargetBullet, params );
