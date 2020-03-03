/// scrRedS5TwinDownpourStep(t)
var t = argument0;

if( t == 2090 ) {
    if( !instance_exists( oRedS4SourceBullet ) ) {
        instance_create( 400, 300, oRedS5SourceBullet );
    } else {
        with( oRedS4SourceBullet ) {
            instance_change( oRedS5SourceBullet, false );
        }
    }
    scrRedCreateCustomSpawner( 0, 0, 43.5, scrRedS5FlashFruit );
} else if( t == 2094 ) {
    with( oRedS5SourceBullet ) {
        BurstSpawner = scrRedAttachCustomSpawner( id, 43.5, scrRedS5SpawnBurstBullet );
        BurstSpawner.SectorCount = 4;
        BurstSpawner.SpawnCount = 12;
        BurstSpawner.SpeedMin = 6;
        BurstSpawner.SpeedMax = 8;
        BurstSpawner.TrailLength = 0;
        scrRedAttachSpawner( id, 1.5, oRedS5BarrageBullet );
        Spawner.SpeedMin = 5;
        Spawner.SpeedMax = 7;
        BarrageSpawner = Spawner;
    }
} else if( t == 2100 ) {
    with( oRedS5SourceBullet ) {
        BurstSpawner.SpeedMin = 8;
        BurstSpawner.SpeedMax = 10;
    }
}
if( t == 2094 ) {
    scrRedMoveInstance( oRedS5SourceBullet, 400, 100, 2443 - 2094 );
    with( oRedS5SourceBullet ) {
        BarrageSpawner.SpeedMin = 6;
        BarrageSpawner.SpeedMax = 8;
    }
}
if( t >= 2094 && t < 2425 ) {
    with( oRedS5SourceBullet ) {
        BarrageSpawner.SpawnPeriod *= 0.996;
    }
} else if( t == 2425 ) {
    with( oRedS5SourceBullet ) {
        BarrageSpawner.SpawnPeriod = 2;
    }
}
if( t == 2443 ) {
    var originalBullet = oRedS5SourceBullet.id;
    var newBullet = instance_create( originalBullet.x, originalBullet.y, oRedS5SourceBullet );
    newBullet.AngleDelta = -originalBullet.AngleDelta;
    originalBullet.direction = 180;
    newBullet.direction = 0;
    newBullet.BurstSpawner = scrRedAttachCustomSpawner( newBullet, 43.5, scrRedS5SpawnBurstBullet );
    
    scrRedAttachSpawner( newBullet, 1.5, oRedS5BarrageBullet );
    newBullet.Spawner.SpeedMin = originalBullet.BarrageSpawner.SpeedMin;
    newBullet.Spawner.SpeedMax = originalBullet.BarrageSpawner.SpeedMax;
    newBullet.BarrageSpawner = newBullet.Spawner;
    newBullet.StartTopX = newBullet.x;
    originalBullet.StartTopX = originalBullet.x;
    originalBullet.BarrageSpawner.SpawnPeriod = 1.5;
    
    with( oRedS5SourceBullet ) {
        BarrageSpawner.SpawnPeriod = 1.75;
        BarrageSpawner.SpeedMin = 7;
        BarrageSpawner.SpeedMax = 9;
        BurstSpawner.SpawnPeriod /= 2;
        BurstSpawner.SectorCount = 4;
        BurstSpawner.SpawnCount = 8;
        BurstSpawner.SpeedMin = 10;
        BurstSpawner.SpeedMax = 12;
        BurstSpawner.TrailLength = 0;
    }
}
if( t == 2565 ) {
    with( oRedS5SourceBullet ) {
        scrRedDestroy( BarrageSpawner );
    }
}
if( t == 2616 ) {
    with( oRedS5SourceBullet ) {
        BurstSpawner.SectorCount = 6;
        BurstSpawner.SpawnPeriod /= 2;
        BurstSpawner.SpawnCount = 6;
        BurstSpawner.SpeedMin = 14;
        BurstSpawner.SpeedMax = 15;
    }
} else if( t == 2658 ) {
    with( oRedS5SourceBullet ) {
        BurstSpawner.SectorCount = 5;
        BurstSpawner.SpawnPeriod /= 2;
        BurstSpawner.SpawnCount = 5;
        BurstSpawner.SpeedMin = 18;
        BurstSpawner.SpeedMax = 18;
        BurstSpawner.TrailLength = 4;
    }
}

if( t == 2443 ) {
    with( oRedS5SourceBullet ) {
        if( direction == 0 ) {
            scrRedMoveInstance( id, 700, 100, 2703 - 2443 );   
        } else {
            scrRedMoveInstance( id, 100, 100, 2703 - 2443 );   
        }
    }
}
if( t >= 2443 && t <= 2702 ) {
    with( oRedS5SourceBullet ) {
        AngleDelta += sign( AngleDelta ) * 0.1;
        BaseAlpha += 0.003;
    }
}

if( t == 2702 ) {
    scrRedDestroy( oRedS5BarrageBullet );
    scrRedDestroy( oRedBaseSpawner );
    with( oRedS5BurstBullet ) {
        speed = 0;
    }
    scrRedDestroy( oRedBulletTrail );
    with( oRedS5SourceBullet ) {
        var newSrc = instance_create( x, y, oRedS6TargetSource );
        newSrc.AngleDelta = sign( AngleDelta );
        instance_destroy();
    }
    instance_create( 0, 0, oRedS5Backdrop );
}

if( t == 2720 ) {
    scrRedDeactivateBullets( oRedS5BurstBullet );
    with( oRedS5BurstBullet ) {
        var circle = scrRedCreateCircle( x, y, random( 360 ), 3, oRedS5Spike );
        circle.DirDelta = choose( -2, 2 );
        DirDelta = circle.DirDelta;
    }
} else if( t == 2726 ) {
    scrRedBulletFadeOut( oRedS5Backdrop );
    oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground;
    with( oRedAbyssBlock ) {
        image_alpha = 0;
    }
}
if( t == 2720 ) {
    with( oRedS5BurstBullet ) {
        scrRedRotateInstanceImage( id, DirDelta * 45, 45, scrRedTweenLinear );
        scrRedBulletFadeOut( id, 0.02 );
        scrRedAttachSpawner( id, 1, oRedS5BulletFadeParticle, 25 );
    }
}

if( t == 2765 ) {
    with( oRedS5Spike ) {
        DirectionDelta = 0;
        RadiusAccel = 1.5;
    } 
} else if( t == 2766 ) {
    scrRedDeactivateBullets( oRedS5Spike );
    scrRedBulletFadeOut( oRedS5Spike, 0.03 );
}

