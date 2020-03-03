var bulletCount = 16;
var dir = scrRedDirToPlayer( x, y ) + 360 / ( 2 * bulletCount );
var params = scrRedCreateCircleAdditionalParams();
params.Speed = 14;
params.Scale = 0.9;
scrRedInitializeCircle( x, y, dir, bulletCount, oRedS8TargetBullet, params );
