/// scrRedS7ClaustrophobiaStep(t)
var t = argument0;

if( t == 3147 && !instance_exists( oRedS6AbyssSource ) ) {
    var targetSrc = instance_create( 400, 200, oRedS6TargetSource );
    targetSrc.AngleDelta = 1;
    var spawner = scrRedAttachCustomSpawner( targetSrc, 4, scrRedS6SpawnAntitargetCircle );
    spawner.SpriteIndex = sprRedAbyssGrad;
    var spiralSrc = instance_create( 400, 200, oRedS6SpiralSource );
    spiralSrc.AngleDelta = -1;
    with( oRedAbyssBackground ) {
        sprite_index = sprRedAbyssRedBackground;
    }
    with( oRedAbyssBlock ) {
        image_alpha = 0;
    }
}

if( t == 3158 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedSpikeBullet;
    var spawner = scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 2, scrRedS7SpawnSpikeSpiral, 14 );
    spawner.TotalDirDelta = 360 / 6;
} else if( t == 3201 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedSpikeBullet;
    var spawner = scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 1.75, scrRedS7SpawnSpikeFan, 12 );
    spawner.TotalDirDelta = 360 / 9;
} else if( t == 3244 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedSpikeBullet;
    var circleDir = random( 360 );
    var bulletCount = 25;
    scrRedS7SpawnCircle( circleDir, bulletCount, 10, oRedS7CircleSpike );
    scrRedS7SpawnCircle( circleDir + 180 / bulletCount, bulletCount, 7, oRedS7CircleSpike );
} else if( t == 3170 || t == 3213 || t == 3256 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedAbyssGrad;
} else if( t == 3280 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedSpikeBullet;
    var spawner = scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 1.75, scrRedS7SpawnSpikeFan, 10 );
    spawner.TotalDirDelta = 360 / 5;
    spawner = scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 4, scrRedS7SpawnTargetCircle, 10 );
    scrRedShakeViewAngle( 4, 15, scrRedTweenSineInOut );
    spawner.Speed = 18;
} else if( t == 3295 ) {
    scrRedShakeViewAngle( 12, 15, scrRedTweenSineInOut );
} else if( t == 3299 ) {
    spawner = scrRedCreateCustomSpawner( 0, 0, 4, scrRedS7SpawnTargetCircle, 14 );
    spawner.Speed = 20;
    spawner = scrRedCreateCustomSpawner( 800, 0, 4, scrRedS7SpawnTargetCircle, 14 );
    spawner.Speed = 20;
} else if( t == 3310 ) {
    scrRedShakeViewAngle( 0, 15, scrRedTweenSineInOut );
} else if( t == 3320 ) {
    with( oRedS6TargetSource.Spawner ) {
        instance_destroy();
    }
} else if( t == 3337 ) {
    var circleDir = random( 360 );
    scrRedS7SpawnCircle( circleDir, 35, 10, oRedS7CircleSpike );
    scrRedS7SpawnCircle( circleDir, 30, 7, oRedS7OuterFuzzySpike );
    scrRedS7SpawnCircle( circleDir, 30, 5, oRedS7InnerFuzzySpike );
} else if( t == 3356 ) {
    scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 5, scrRedS7SpawnTargetBullets, 20 );
} else if( t == 3380 ) {
    with( oRedS7FuzzySpike ) {
        friction = 0.5;
    }
} else if( t == 3400 ) {
    var outerDir = choose( -1, 1 );
    with( oRedS7OuterFuzzySpike ) {
        DirDelta = outerDir * 1;
        alarm[0] = 30;
        friction = 0;
        speed = 2;
    }
    with( oRedS7InnerFuzzySpike ) {
        DirDelta = -outerDir * 1;
        alarm[0] = 30;
        friction = 0;
        speed = 2;
    }
    S7StartPlayerPosX = scrRedGetPlayerX();
    scrRedS7InitWallImpulses( S7StartPlayerPosX );
} else if( t == 3424 ) {
    scrRedS7MoveWall( S7StartPlayerPosX < 400, 20, S7StartPlayerPosX );
    if( S7StartPlayerPosX < 400 ) {
        scrRedShakeViewX( -100, 40 );
    } else {
        scrRedShakeViewX( 100, 40 );
    }
} else if( t == 3444 ) {
    scrRedS7MoveWallBack( S7StartPlayerPosX < 400, 20 );
} else if( t == 3465 ) {
    scrRedS7MoveWall( S7StartPlayerPosX >= 400, 20, S7StartPlayerPosX );
    if( S7StartPlayerPosX < 400 ) {
        scrRedShakeViewX( 100, 40 );
    } else {
        scrRedShakeViewX( -100, 40 );
    }
} else if( t == 3485 ) {
    scrRedS7MoveWallBack( S7StartPlayerPosX >= 400, 20 );
    scrRedBulletFadeOut( oRedLineImpulse, 0.04 );
}

