var playerDir = scrRedDirToPlayerFeet( x, y );
var bulletCount = 10;
var dirDelta = 360 / ( 2 * bulletCount );
var circle = scrRedCreateCircleAdditionalParams();
circle.Spawner = id;
scrRedInitializeCircle( x, y, playerDir + dirDelta, bulletCount, oRedS6TargetBullet, circle );
