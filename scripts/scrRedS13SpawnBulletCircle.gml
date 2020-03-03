var centerDir = point_direction( 400, 303, x, y );
for( var dir = centerDir - 90; dir <= centerDir + 90; dir += 30 ) {
    var bullet = instance_create( x, y, oRedS13CircleBullet );
    bullet.direction = dir;
    bullet.speed = 7;
}

var rngDir = centerDir + 180 + random_range( -AngleDelta, AngleDelta );
var bullet = instance_create( x, y, oRedS13CircleBullet );
bullet.direction = rngDir;
bullet.speed = Speed;
