/// scrRedS16SpawnTargetLine(deltaDir)
var deltaDir = argument0;

var playerDir = scrRedDirToPlayer( x, y ) + deltaDir;

var lineCount = 6;
var speedDelta = 1;
var currentSpeed = 8;
repeat( lineCount ) {
    var line = instance_create( x, y, oRedS16LineBullet );
    line.direction = playerDir;
    line.speed = currentSpeed;
    currentSpeed -= speedDelta;
}
