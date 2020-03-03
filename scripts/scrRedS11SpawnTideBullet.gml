var spawnY = random_range( 608 - 64, 608 - 128 );
var bullet =  instance_create( x, spawnY, oRedS11TideBullet );
bullet.speed = 6;
var sectorIndex = DirIndex % 5 - 2;
var dirDelta = sectorIndex * 26 + random_range( -13, 13 );
bullet.direction = MainSpawnDir + dirDelta;
bullet.gravity = 0.3;
var hue = random_range( HueMin, HueMax );
bullet.Hue = hue;
bullet.image_blend = make_color_hsv( hue, 242, 255 );

DirIndex++;
SpawnPeriod *= 1.03;
