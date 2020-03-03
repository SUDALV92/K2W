var t = argument0;

if( t == 355 ) {
    var period = 2.5;
    scrRedCreateBloomLine( 100, 0, -90, period, 6, 7, 8 );
    scrRedCreateBloomLine( 400, 0, -90, period, 6, 7, 8 );
    scrRedCreateBloomLine( 700, 0, -90, period, 6, 7, 8 );
} else if( t == 376 ) {
} else if( t == 397 ) {
} else if( t == 441 ) {
    var period = 3.0;
    scrRedCreateBloomLine( 250, 0, -90, period, 6, 1, 2 );
    scrRedCreateBloomLine( 550, 0, -90, period, 6, 1, 2 );
} else if( t == 463 ) {
} else if( t == 484 ) {
} else if( t == 528 ) {
    var period = 4.0;
    scrRedCreateBloomLine( 0, 225, 0, period, 6, 3, 4 );
    scrRedCreateBloomLine( 800, 325, 180, period, 6, 3, 4 );
    scrRedCreateBloomLine( 0, 425, 0, period, 6, 3, 4 );
} else if( t == 550 ) {
} else if( t == 572 ) {
} else if( t == 615 ) {
    var period = 3.0;
    scrRedCreateBloomLine( 0, 560, 0, period, 7, 5, 6 );
    scrRedCreateBloomLine( 800, 560, 180, period, 7, 5, 6 );
    scrRedCreateBloomLine( 0, 460, 0, period, 7, 5, 6 );
    scrRedCreateBloomLine( 800, 460, 180, period, 7, 5, 6 );
    scrRedCreateBloomLine( 0, 360, 0, period, 7, 5, 6 );
    scrRedCreateBloomLine( 800, 360, 180, period, 7, 5, 6 );
} else if( t == 640 ) {
} else if( t == 659 ) {
    scrRedCreateCustomSpawner( 0, 0, 15, scrRedS2CreateCenterImpulse, 45 );
    with( oRedS2Bullet ) {
        MaxSpeed = 100;
        EnableSineMovement = false;
        speed = min( speed, 4 );
        gravity = random_range( 0.3, 0.5 );
        friction = 0;
        var divisionX = scrRedGetPlayerX();
        if( x < divisionX ) {
            gravity_direction = 180;   
        } else {
            gravity_direction = 0;
        }
    }
    with( oRedAttachedSpawner ) {
        instance_destroy();
    }
}
