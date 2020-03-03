/// scrRedInitializeCircle( spawnX, spawnY, spawnAngle, spawnNum, spawnObj, circleParams )
///spawns a ring of projectiles
///argument0 - spawn X
///argument1 - spawn Y
///argument2 - starting angle
///argument3 - number of projectiles to spawn
///argument4 - projectile to spawn
///argument5 - circle parameters

var spawnX = argument0;
var spawnY = argument1;
var spawnAngle = argument2;
var spawnNum = argument3;
var spawnObj = argument4;
var circle = argument5;

if( circle.Internal_BulletCount != 0 ) {
    show_error( "Same circle parameters cannot be used for multiple circles.", true );
}

circle.x = spawnX;
circle.y = spawnY;
circle.Internal_BulletCount = spawnNum;
for( var i = 0; i < spawnNum; i++ ) {
    var bullet = instance_create( spawnX, spawnY, oRedDummyObj );
    bullet.direction = spawnAngle + i * ( 360 / spawnNum );
    bullet.StartDirection = bullet.direction;
    bullet.Circle = circle;
    with( bullet ) {
        instance_change( spawnObj, true );
    }
    circle.Internal_Bullets[i] = bullet;
}
