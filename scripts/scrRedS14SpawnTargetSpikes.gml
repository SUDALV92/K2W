var dir = point_direction( x, y, scrRedGetPlayerX(), scrRedGetPlayerY() );

var spikeCount = 4;
var spikeSpeed = 9;
for( var i = 0; i < spikeCount; i++ ) {
    var spike = instance_create( x, y, oRedS14TargetSpike );
    spike.speed = spikeSpeed;
    spike.direction = dir;
    spike.image_angle = spike.direction;
    spikeSpeed -= 0.5;
}
