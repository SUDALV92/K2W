var deltaX = 144;
var spikeY = -20;
for( var i = 0; i < 6 ; i++ ) {
    var spikeX = XOffset + i * deltaX;
    if( spikeX > 832 ) {
        spikeX -= 864;
    }
    var spike = instance_create( spikeX, spikeY, oRedS8WallSpike );
    spike.direction = -90;
    spike.image_angle = spike.direction;
    spike.WallId = WallId;
}
WallId++;
XOffset += deltaX / 2;
while( XOffset > deltaX ) {
    XOffset -= deltaX;
}

with( oRedS8WallSpike ) {
    Acceleration = 0;
    speed = 10;
}
