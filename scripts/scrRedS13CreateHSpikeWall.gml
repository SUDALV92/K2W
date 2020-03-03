/// scrRedS13CreateVSpikeWall(spikeY, spikeDir, spikeStartIndex)
var spikeY = argument0, spikeDir = argument1, spikeStartIndex = argument2;

var spikeIndex = spikeStartIndex;
for( var spikeX = 0; spikeX < 800; spikeX += random_range( 48, 52 ) ) {
    var spike = instance_create( spikeX, spikeY, oRedS13WallSpike );
    spike.direction = spikeDir;
    if( spikeIndex % 2 == 0 ) {
        spike.speed = random_range( 5, 6.6 );
    } else {
        spike.speed = random_range( 7, 9 );
    }
    spike.image_angle = spike.direction;
    spikeIndex++;
}

