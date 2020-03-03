/// scrRedS13CreateVSpikeWall(spikeX, spikeDir, spikeStartIndex)
var spikeX = argument0, spikeDir = argument1, spikeStartIndex = argument2;

var spikeIndex = spikeStartIndex;
for( var spikeY = 0; spikeY < 608; spikeY += random_range( 56, 64 ) ) {
    var spike = instance_create( spikeX, spikeY, oRedS13WallSpike );
    spike.direction = spikeDir;
    if( spikeIndex % 2 == 0 ) {
        spike.speed = random_range( 5, 6.4 );
    } else {
        spike.speed = random_range( 7, 9 );
    }
    spike.image_angle = spike.direction;
    spikeIndex++;
}
