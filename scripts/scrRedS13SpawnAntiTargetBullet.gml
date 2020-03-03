var playerDir = scrRedDirToPlayer( x, y );
var bulletCount = 8;
var dirDelta = 360 / ( 2 * bulletCount );
var circle = scrRedCreateCircleAdditionalParams();
circle.Spawner = id;
scrRedInitializeCircle( x, y, playerDir + dirDelta, bulletCount, oRedS13AntiTargetBullet, circle );
