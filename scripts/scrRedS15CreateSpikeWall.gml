var gapWidth = 2;
var gapPos = irandom_range( 11, 15 );

for( var i = 1; i < gapPos; i++ ) {
    var wallY = i * 32;
    var spike = instance_create( WallX, wallY + 16, oRedS15WallSpike );
    spike.direction = WallDir;
    spike.image_angle = WallDir;
    spike.speed = 4;
    spike.Spawner = id;
}

for( var i = gapPos + gapWidth; i < 18; i++ ) {
    var wallY = i * 32;
    var spike = instance_create( WallX, wallY + 16, oRedS15WallSpike );
    spike.direction = WallDir;
    spike.image_angle = WallDir;
    spike.speed = 4;
    spike.Spawner = id;
}

