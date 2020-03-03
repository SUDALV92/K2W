/// scrRedS8SendSpikesAway(radius)
var radius = argument0;

var playerX = scrRedGetPlayerX();
var playerY = scrRedGetPlayerY();
with( oRedS8WallSpike ) {
    if( point_distance( x, y, playerX, playerY ) < radius ) {
        var spike = instance_create( x, y, oRedS8GravitySpike );
        var dir = point_direction( playerX, playerY, x, y );
        spike.direction = dir;
        spike.image_angle = spike.direction;
        spike.speed = 6;
        spike.gravity = 0.3;
        spike.image_xscale = image_xscale;
        spike.image_yscale = image_yscale;
        instance_destroy();
    }
}
