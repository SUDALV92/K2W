var sectorCount = 6;
var sectorDirDelta = 360 / ( 2 * sectorCount );
var currentDir = scrRedDirToPlayer( x, y );
for( var i = 0; i < sectorCount; i++ ) {
    var bullet = instance_create( x, y, oRedS15MiddleBurstBullet );
    bullet.speed = random_range( MinSpeed, MaxSpeed );
    bullet.direction = random_range( currentDir - sectorDirDelta, currentDir + sectorDirDelta );
    scrRedAttachTrail( bullet, 4 );
    currentDir += 2 * sectorDirDelta;
}
