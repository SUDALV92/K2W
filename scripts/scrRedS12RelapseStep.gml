/// scrRedS12RelapseStep(t)
var t = argument0;

if( t == 6269 ) {
    var leftSrc = instance_create( -20, 100, oRedS12Source );
    leftSrc.AngleDelta = -1;
    var leftSpawner = scrRedAttachCustomSpawner( leftSrc, 1.8, scrRedS12SpawnBarrageBullet );
    leftSpawner.SpeedMin = 6;
    leftSpawner.SpeedMax = 10;
    leftSpawner.DirIndex = 0;
    leftSpawner.SectorCount = 2;
    
    var rightSrc = instance_create( 820, 100, oRedS12Source );
    rightSrc.AngleDelta = 1;
    var rightSpawner = scrRedAttachCustomSpawner( rightSrc, 1.8, scrRedS12SpawnBarrageBullet );
    rightSpawner.SpeedMin = 6;
    rightSpawner.SpeedMax = 10;
    rightSpawner.DirIndex = 1;
    rightSpawner.SectorCount = 2;
    
    scrRedMoveInstance( oRedS12Source, 400, 100, 6619 - 6269 );
    instance_create( 0, 0, oRedS12BgDrawMechanism );
    
} else if( t == 6270 || t == 6355 ||  t == 6443 || t == 6529 ) {
    scrRedS12CreateRedCircle();
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.25, 14, scrRedTweenLinear );
} else if( t == 6283 || t == 6369 || t == 6472 || t == 6543 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.3, 15, scrRedTweenLinear );
} else if( t == 6298 || t == 6384 || t == 6472 || t == 6558 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.5, 14, scrRedTweenLinear );
} else if( t == 6312 || t == 6398 || t == 6486 || t == 6572 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 1.0, 17, scrRedTweenLinear );
} else if( t == 6329 || t == 6415 || t == 6503 || t == 6589 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.0, 20, scrRedTweenLinear );
}
else if( t == 6617 || t == 6703 || t == 6791 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.4, 14, scrRedTweenLinear );
} else if( t == 6631 || t == 6717 || t == 6805 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.5, 15, scrRedTweenLinear );
} else if( t == 6646 || t == 6732 || t == 6819 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.6, 14, scrRedTweenLinear );
} else if( t == 6660 || t == 6746 || t == 6834 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 1.0, 16, scrRedTweenLinear );
} else if( t == 6677 || t == 6763 || t == 6851 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.25, 20, scrRedTweenLinear );
} 
else if( t == 6619 ) {
    scrRedMoveInstance( oRedS12Source, 400, 300, 6879 - 6619 );
} else if( t == 6664 ) {
    with( oRedBaseSpawner ) {
        SpeedMin = 10;
        SpeedMax = 12;
        SectorCount = 3;
    }
} else if( t == 6706 ) {
    with( oRedBaseSpawner ) {
        SpeedMin = 12;
        SpeedMax = 14;
        SectorCount = 4;
    }
} else if( t == 6793 ) {
    with( oRedBaseSpawner ) {
        SpeedMin = 13;
        SpeedMax = 14;
        SectorCount = 4;
    }
} else if( t == 6837 ) {
    scrRedDestroy( oRedBaseSpawner );
    scrRedAttachCustomSpawner( oRedS12Source, 2, scrRedS12SpawnBurstBullet );
    with( oRedS12Source ) {
        Spawner.DirIndex = 2;
    }
} else if( t == 6879 ) {
    scrRedDestroy( oRedS12Bullet );
    scrRedDestroy( oRedBulletTrail );
    with( oRedS12BurstBullet ) {
        speed = 0;
    }
    with( oRedS12Source ) {
        var newSrc = instance_create( x, y, oRedS13Source );
        newSrc.AngleDelta = sign( AngleDelta );
        instance_destroy();
    }
    instance_create( 0, 0, oRedS5Backdrop );
    instance_create( 0, 0, oRedInfiniteJump );
    for( var floorX = 100; floorX < 800; floorX += 200 ) {
        scrRedCreateFloorIndicator( floorX, 6, 0.25 );
        scrRedCreateRWallIndicator( floorX, 6, 0.25 );
        scrRedCreateLWallIndicator( floorX, 6, 0.25 );
    }
    with( oRedLightLineDrawMechanism ) {
        depth = 0;
    }
} else if( t == 6890 ) {
    scrRedCreateEdgeWalls( 24, 56 );
    var mover = instance_create( 0, 0, oRedS12EdgeSpikeMover );
    mover.Duration = 35;
    scrRedDeactivateBullets( oRedAbyssEdgeSpike );
} else if( t == 6895 ) {
    oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
    with( oRedAbyssBlock ) {
        image_alpha = 0;
    }
    scrRedBulletFadeOut( oRedS5Backdrop );
    scrRedActivateBullets( oRedAbyssEdgeSpike );
    scrRedChangeInstanceAlpha( oRedLineImpulse, 1, 20 );
} else if( t == 6940 ) {
    var moveDuration = 23;
    scrRedBulletFadeOut( oRedS12BurstBullet );
    scrRedDeactivateBullets( oRedS12BurstBullet );
    with( oRedS12EdgeSpikeMover ) {
        StepDelta = -1;
    }
    with( oRedAbyssEdgeSpike ) {
        if( image_angle == -90 ) {
            FoundationY = -24;
            TargetBaseDelta = 0;
        }
    }
    with( oRedLeftBlock ) {
        scrRedMoveInstance( id, -32, y, moveDuration, scrRedTweenSineOut );
    }
    with( oRedBlCornerBlock ) {
        scrRedMoveInstance( id, -32, y, moveDuration, scrRedTweenSineOut );   
    }
    with( oRedRightBlock ) {
        scrRedMoveInstance( id, 832, y, moveDuration, scrRedTweenSineOut );   
    }
    with( oRedBrCornerBlock ) {
        scrRedMoveInstance( id, 832, y, moveDuration, scrRedTweenSineOut );
    }
    with( oRedFloorBlock ) {
        scrRedMoveInstance( id, x, 608 + 32, moveDuration, scrRedTweenSineOut );   
    }
    with( oRedLightLine ) {
        if( WallId == -1 ) {
            scrRedMoveInstance( id, -32, y, moveDuration, scrRedTweenSineOut );
        } else if( WallId == 0 ) {
            scrRedMoveInstance( id, x, 608 + 24, moveDuration, scrRedTweenSineOut );
        } else if( WallId == 1 ) {
            scrRedMoveInstance( id, 832, y, moveDuration, scrRedTweenSineOut );  
        }
    }
    scrRedDestroy( objBlock );
} else if( t == 6976 ) {
    with( oRedLightLine ) {
        visible = false;
    }
    scrRedDestroy( oRedAbyssBlock );
    scrRedDestroy( oRedLineImpulse );
    scrRedDestroy( oRedS12EdgeSpikeMover );
}
