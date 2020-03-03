var bullet1 = scrRedSpawnSectorBullet( DirIndex, 2, oRedS14BurstBullet );
var bulletDir = bullet1.direction;
var bullet2 = instance_create( x, y, oRedS14BurstBullet );
bullet2.direction = bulletDir + 45;
var bullet3 = instance_create( x, y, oRedS14BurstBullet );
bullet3.direction = bulletDir - 45;

DirIndex++;

