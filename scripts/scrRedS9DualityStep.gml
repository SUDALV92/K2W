/// scrRedS9DualityStep(t)
var t = argument0;

if( t == 4189 ) {
    with( oRedAbyssBlock ) {
        visible = false;
    }
    with( oRedLightLine ) {
        visible = false;
    }
    instance_create( 0, 0, oRedS9SurfaceDrawInitiator );
    instance_create( 0, 0, oRedS9SurfaceDrawFinalizer );
    var separator = instance_create( 0, 0, oRedS9ScreenSeparator );
    separator.TargetSeparationX = 350;

    var leftSrc = instance_create( 0, 0, oRedS9DualSource );
    leftSrc.AngleDelta = 2;
    leftSrc.FruitIndex = 0;
    var rightSrc = instance_create( 0, 0, oRedS9DualSource );
    rightSrc.AngleDelta = -2;
    rightSrc.FruitIndex = 7;
    scrRedS9SwitchMovePointsX( rightSrc );
    scrRedS9SwitchMovePointsY( rightSrc );
    
    scrRedAttachCustomSpawner( oRedS9DualSource, 2, scrRedS9SpawnDualBullet );
    leftSrc.Spawner.DirIndex = 1;
    rightSrc.Spawner.DirIndex = 2;
}

if( t == 4220 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 500;
    }
    scrRedS9Shake( -4 );
} else if( t == 4306 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 250;
    }
    scrRedS9Shake( 4 );
} else if( t == 4391 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 650;
    }
    scrRedS9Shake( -5 );
} else if( t == 4481 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 250;
    }
    scrRedS9Shake( 5 );
} else if( t == 4564 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 620;
    }
    scrRedS9Shake( -6 );
} else if( t == 4652 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 200;
    }
    scrRedS9Shake( 6 );
} else if( t == 4737 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 350;
    }
    scrRedS9Shake( -1 );
} else if( t == 4828 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 0;
    }
    scrRedShakeViewAngle( 6, 40 );
} else if( t == 4875 ) {
    scrRedFlashScreen( c_white, 10, 100 );
    scrRedDeactivateBullets( oRedS9DualBullet );
    scrRedDeactivateBullets( oRedS9SpikeHitbox );
} else if( t == 4885 ) {
    scrRedDestroy( oRedS9ScreenSeparator );
    scrRedDestroy( oRedS9DualBullet );
    scrRedDestroy( oRedS9DualSource );
    scrRedDestroy( oRedS9SurfaceDrawInitiator );
    scrRedDestroy( oRedS9SurfaceDrawFinalizer );
    
    with( oRedAbyssBlock ) {
        visible = true;
        image_alpha = 1;
    }
    with( oRedLightLine ) {
        visible = true;
    }
}

