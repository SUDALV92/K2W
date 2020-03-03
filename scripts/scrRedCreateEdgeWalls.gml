/// scrRedCreateEdgeWalls(wallDelta, topWallDelta)
var wallDelta = argument0, topWallDelta = argument1;

for( var spikeX = 0; spikeX < 800; spikeX += 32 ) {
    var tSpike = instance_create( spikeX + 32, -topWallDelta, oRedAbyssEdgeSpike );
    tSpike.image_angle = -90;
    tSpike.BaseX = tSpike.x;
    tSpike.BaseY = tSpike.y;
    tSpike.BaseOffset = 0.2 * spikeX;
    tSpike.XMajor = 0;
    tSpike.YMajor = 1;
    tSpike.FoundationX = tSpike.BaseX;
    tSpike.FoundationY = tSpike.BaseY;
    
    var bSpike = instance_create( spikeX, 608 + wallDelta, oRedAbyssEdgeSpike );
    bSpike.image_angle = 90;
    bSpike.BaseX = bSpike.x;
    bSpike.BaseY = bSpike.y;
    bSpike.BaseOffset = 0.2 * spikeX;
    bSpike.XMajor = 0;
    bSpike.YMajor = -1;
    bSpike.FoundationX = bSpike.BaseX;
    bSpike.FoundationY = bSpike.BaseY;
}

for( var spikeY = 32; spikeY < 576; spikeY += 32 ) {
    var lSpike = instance_create( -wallDelta, spikeY, oRedAbyssEdgeSpike );
    lSpike.image_angle = 0;
    lSpike.BaseX = lSpike.x;
    lSpike.BaseY = lSpike.y;
    lSpike.BaseOffset = 0.2 * spikeY;
    lSpike.XMajor = 1;
    lSpike.YMajor = 0;
    lSpike.FoundationX = lSpike.BaseX;
    lSpike.FoundationY = lSpike.BaseY;
    
    var rSpike = instance_create( 800 + wallDelta, spikeY + 32, oRedAbyssEdgeSpike );
    rSpike.image_angle = 180;
    rSpike.BaseX = rSpike.x;
    rSpike.BaseY = rSpike.y;
    rSpike.BaseOffset = 0.2 * spikeY;
    rSpike.XMajor = -1;
    rSpike.YMajor = 0;
    rSpike.FoundationX = rSpike.BaseX;
    rSpike.FoundationY = rSpike.BaseY;
}
