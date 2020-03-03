var spike = scrRedS16CreateEdgeInstance( oRedS16BarrageSpike );
spike.speed = 5.5;
spike.image_angle = spike.direction;
spike.Spawner = id;

if( Curve ) {
    var trail = scrRedAttachTrail( spike, 7 );
    trail.TailScale = 1;
    trail.TailAlpha = 0.5;
}
