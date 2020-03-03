var bulletCount = argument0;

var spawnX = random_range( 64, 800 - 64 );
var spawnY = 150;
scrRedCreateCircle( spawnX, spawnY, random( 360 ), bulletCount, oRedS17Bullet );
