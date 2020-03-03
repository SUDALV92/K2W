var spikeCount = argument0;
var angleOffset = argument1;

with( oRedS14Source ) {
    var baseDir = point_direction( x, y, 400, 303 );
    var minSpeed = 5;
    var maxSpeed = 12;
    var speedDelta = ( maxSpeed - minSpeed ) / spikeCount;
    for( var i = 0; i < spikeCount; i++ ) {
        var spike = instance_create( x, y, oRedS14LineSpike );
        spike.direction = baseDir + angleOffset;
        spike.image_angle = spike.direction;
        spike.speed = minSpeed + speedDelta * i;
    }
}
