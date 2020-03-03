var bulletCount = 10;
var dir = scrRedDirToPlayer( x, y ) + 360 / ( 2 * bulletCount );
var params = scrRedCreateCircleAdditionalParams();
params.Speed = 7;
params.Scale = 1;
scrRedInitializeCircle( x, y, dir, bulletCount, oRedS8TargetBullet, params );
