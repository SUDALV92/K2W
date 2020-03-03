var count = SpawnCount / SectorCount;
var sectorDirDelta = 360 / ( 2 * SectorCount );
var currentDir = scrRedDirToPlayer( x, y );
for( var i = 0; i < SectorCount; i++ ) {
    repeat( count ) {
        var bullet = instance_create( x, y, oRedS5BurstBullet );
        bullet.speed = random_range( SpeedMin, SpeedMax );
        bullet.direction = random_range( currentDir - sectorDirDelta, currentDir + sectorDirDelta );
        scrRedAttachTrail( bullet, TrailLength );
        currentDir += 2 * sectorDirDelta;
    }
}

