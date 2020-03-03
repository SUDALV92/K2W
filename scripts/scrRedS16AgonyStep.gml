/// scrRedS16AgonyStep(t)
var t = argument0;

if( t == 9050 ) {
    if( !instance_exists( oRedS15Source ) ) {
        oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
        with( oRedAbyssBlock ) {
            image_alpha = 0;
        }
        instance_create( 0, 0, oRedInfiniteJump );
        scrRedDestroy( objBlock );
        scrRedDestroy( oRedAbyssBlock );
        with( oRedLightLine ) {
            visible = false;
        }
        scrRedCreateEdgeWalls( 24, 24 );
    }
    scrRedDestroy( oRedS15Source );
    var src1 = instance_create( 400, 100, oRedS16Source );
    scrRedMoveInstance( src1, 100, 100, 40 );
    var spawner = scrRedAttachCustomSpawner( src1, 25, scrRedS16SpawnTargetLineCircle );
    spawner.StartDir = random( 360 );
    spawner.SectorCount = 5;
    src1.LineSpawner = spawner;
    var spawner2 = scrRedAttachCustomSpawner( src1, 2, scrRedS16SpawnBarrageBullet );
    spawner2.DirIndex = 1;
    src1.BarrageSpawner = spawner2;
} else if( t == 9090 ) {
    scrRedAttachCustomSpawner( oRedS16Source, 60, scrRedS16OscillateSpawner, 9191 - 9090 );
} else if( t == 9117 ) {
} else if( t == 9191 ) {
} else if( t == 9210 ) {
    scrRedMoveInstance( oRedS16Source, 400, 100, 25 );
} else if( t == 9275 ) {
    with( oRedS16Source ) {
        scrRedDestroy( LineSpawner );
        scrRedDestroy( BarrageSpawner );
    }
} else if( t == 9291 ) {
    var spawner = scrRedAttachCustomSpawner( oRedS16Source, 5, scrRedS16SpawnCircle, 15 );
    spawner.CircleDir = scrRedDirToPlayer( spawner.x, spawner.y );
    if( instance_exists( objPlayer ) && objPlayer.hspeed != 0 ) {
        spawner.CircleDelta = objPlayer.hspeed;
    } else {
        spawner.CircleDelta = -3;
    }
} else if( t == 9313 ) {
    scrRedAttachCustomSpawner( oRedS16Source, 4, scrRedS16SpawnTargetSpike, 20 );
    var fallDuration = 9398 - 9313;
    scrRedAttachCustomSpawner( oRedS16Source, 10, scrRedS16SpawnTrailBullet, fallDuration );
} else if( t == 9330 ) {
    var fallDuration = 9400 - 9330;
    scrRedMoveInstance( oRedS16Source, 400, 750, fallDuration, scrRedTweenBackIn );
} else if( t == 9398 ) {
    scrRedDestroy( oRedS16Source );
    with( oRedS16TrailBullet ) {
        if( y > 400 || vspeed > 0 ) {
            gravity = 0.4;
        }
    }
    scrRedFlashScreen( c_white, 5, 15 );
    repeat( 75 ) {
        var bullet = instance_create( 400, 610, oRedS16ExplosionBullet );
        bullet.direction = random_range( 0, 180 );
        bullet.image_angle = bullet.direction;
        if( bullet.direction > 130 || bullet.direction < 50 ) {
            bullet.speed = random_range( 3, 17 );
        } else {
            bullet.speed = random_range( 3, 10 );
        }
        bullet.gravity = 0.2;
    }
    var borderSpawner = scrRedCreateCustomSpawner( 0, 0, 0.5, scrRedS16SpawnBorderSpike );
    borderSpawner.ScaleDelta = 0.14;
    var spawner = scrRedCreateCustomSpawner( 0, 0, 1.6, scrRedS16SpawnBarrageSpike, 9525 - 9398 );
    spawner.Curve = false;
} else if( t == 9464 ) {
    with( oRedS16BarrageSpike ) {
        var trail = scrRedAttachTrail( id, 7 );
        trail.TailScale = 1;
        trail.TailAlpha = 0.5;
        speed = 4;
    }
    with( oRedBaseSpawner ) {
        Curve = true;
    }
    var flash = scrRedFlashScreen( c_red, 20, 10 );
    flash.MaxAlpha = 0.75;
} else if( t == 9489 ) {
    with( oRedBaseSpawner ) {
        Curve = false;
    }
    with( oRedS16BarrageSpike ) {
        speed = 5.5;
    }
    with( oRedBulletTrail ) {
        FadeDelta = 1;
    }
    
} else if( t == 9525 ) {
} else if( t == 9596 ) {
    scrRedS16CreatePathSpawner( pRedS16TL, 25 );
    scrRedS16CreatePathSpawner( pRedS16TR, 25 );
    scrRedS16CreatePathSpawner( pRedS16BL, 25 );
    scrRedS16CreatePathSpawner( pRedS16BR, 25 );
} else if( t == 9639 ) {
    scrRedS16CreatePathSpawner( pRedS16T, 25 );
    scrRedS16CreatePathSpawner( pRedS16R, 25 );
    scrRedS16CreatePathSpawner( pRedS16B, 25 );
    scrRedS16CreatePathSpawner( pRedS16L, 25 );
    
    scrRedS16CreatePathSpawner( pRedS16BLL, 25 );
    scrRedS16CreatePathSpawner( pRedS16BBL, 25 );
    scrRedS16CreatePathSpawner( pRedS16BBR, 25 );
    scrRedS16CreatePathSpawner( pRedS16TTL, 25 );
    scrRedS16CreatePathSpawner( pRedS16TTR, 25 );
} else if( t == 9660 ) {
    scrRedDestroy( oRedBaseSpawner );
    scrRedDestroy( oRedS16PathSpawner );
    scrRedDeactivateBullets( oRedS16BorderSpike );
    instance_create( 0, 0, oRedS16GreyscaleDrawMechanism );
    with( oRedS16BorderSpike ) {
        speed *= 0.1;
        ScaleDelta *= 0.1;
        CurveDelta *= 0.1;
    }
    scrRedDeactivateBullets( oRedProjectile );
    with( objPlayer ) {
        visible = false;
        frozen = true;
        var dummy = instance_create( x, y, oRedS16PlayerDummy );
        dummy.vspeed = vspeed * 0.1;
        dummy.sprite_index = sprite_index;
        dummy.image_index = image_index;
        dummy.image_speed = image_speed / 5;
    }
    with( oRedS16PathSpike ) {
        var distance = point_distance( x, y, 400, 303 );
        var pushDistance = random_range( 0.01, 0.023 ) * power( distance, 1.5 );
        RotateDelta = pushDistance * random_range( -2.0, 2.0 );
        scrRedRotateInstanceImage( id, image_angle + RotateDelta, 100, scrRedTweenSineOut );
        var dir = point_direction( 400, 303, x, y );
        scrRedMoveInstance( id, x + lengthdir_x( pushDistance, dir ), y + lengthdir_y( pushDistance, dir ), 100, scrRedTweenSineOut );
    } 
    
    var bBlock = instance_create( 0, 608 - 32, objBlock );
    bBlock.image_xscale = 800 / 32;
    var lBlock = instance_create( 0, 0, objBlock );
    lBlock.image_yscale = ( 608 - 32 ) / 32;
    var rBlock = instance_create( 800 - 32, 0, objBlock );
    rBlock.image_yscale = lBlock.image_yscale;
} else if( t == 9700 ) {
    scrRedFlashScreen( c_black, 35, 25 );
} else if( t == 9735 ) {
    oRedAbyssBackground.sprite_index = sprRedAbyssBackground;
    scrRedDestroy( oRedS16BorderSpike );
    scrRedDestroy( oRedS16PathSpike );
    scrRedDestroy( oRedInfiniteJump );
    scrRedDestroy( oRedS16PlayerDummy );
    scrRedDestroy( oRedAbyssEdgeSpike );
    scrRedDestroy( oRedS16GreyscaleDrawMechanism );
    with( objPlayer ) {
        visible = true;
        frozen = false;
        x = clamp( x, 48, 800 - 48 );
        xprevious = x;
        y = 608 - ( bbox_bottom - y ) - 32 - 1;
        yprevious = y;
    }
    var bottomY = 608 - 32;
    var rightX = 800 - 32;
    for( var blockY = 0; blockY < bottomY; blockY += 32 ) {
        instance_create( 0, blockY, oRedLeftBlock );
        instance_create( rightX, blockY, oRedRightBlock );
    }
    instance_create( 0, bottomY, oRedBlCornerBlock );
    for( var bottomX = 0; bottomX < rightX; bottomX += 32 ) {
        instance_create( bottomX, bottomY, oRedFloorBlock );
    }
    instance_create( rightX, bottomY, oRedBrCornerBlock );
}
