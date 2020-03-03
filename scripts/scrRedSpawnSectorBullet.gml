var sectorIndex = argument0;
var sectorCount = argument1;
var bulletObj = argument2;

var sectorDirDelta = 360 / ( 2 * sectorCount );
var playerDir = scrRedDirToPlayer( x, y );
var currentDir = playerDir + sectorDirDelta * 2 * sectorIndex;
var bullet = instance_create( x, y, bulletObj );
bullet.direction = random_range( currentDir - sectorDirDelta, currentDir + sectorDirDelta );
return bullet;
