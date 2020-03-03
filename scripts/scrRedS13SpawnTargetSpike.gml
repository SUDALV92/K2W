var playerY = scrRedGetPlayerY();

var lSpike = instance_create( 0, playerY, oRedS13TargetSpike );
lSpike.direction = 0;
lSpike.image_angle = lSpike.direction;
lSpike.speed = 30;
var rSpike = instance_create( 800, playerY, oRedS13TargetSpike );
rSpike.direction = 180;
rSpike.image_angle = rSpike.direction;
rSpike.speed = 30;

scrRedShakeViewX( 4, 4 );
