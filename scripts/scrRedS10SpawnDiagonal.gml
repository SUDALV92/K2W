var step = oRedAbyssAvoidanceController.Step;
if( step < 4885 && !instance_exists( objPlayer ) ) {
    return 0;
}

var spawnX = random_range( 48, 800 - 48 );
var spawnY = -150;

var bullet = instance_create( spawnX, spawnY, oRedS10DiagonalBullet );
bullet.direction = SpawnDir;
var hue = random_range( HueMin, HueMax );
bullet.Hue = hue;
bullet.image_blend = make_color_hsv( hue, 242, 255 );
