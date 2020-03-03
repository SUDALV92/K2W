var spawnX = argument0;
var spawnY = argument1;
var directionDelta = argument2;

var slicesCount = 5;
var sliceBulletCount = 5;
var sliceDegLength = 25;

var sliceDegDelta = sliceDegLength / sliceBulletCount;
var gapDegLength = ( 360 - ( sliceDegLength * slicesCount ) ) / slicesCount;
var sectorDegLength = gapDegLength + sliceDegLength;

var startDir = random( 360 );
for( var i = 0; i < 360; i += sectorDegLength ) {
    var currentDir = startDir + i;
    var sector = instance_create( 0, 0, oRedS4SectorController );
    sector.BulletCount = sliceBulletCount;
    for( var j = 0; j < sliceBulletCount; j++ ) {
        var bullet = instance_create( spawnX, spawnY, oRedS4CircleBullet );
        bullet.PolarDirection = currentDir;
        bullet.DirectionDelta = directionDelta;
        bullet.RadiusDelta = 3;
        currentDir += sliceDegDelta;
        sector.Bullets[j] = bullet;
    }
}
