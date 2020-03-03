/// scrRedS4SlicedCirclesStep(t)
var t = argument0;

if( t == 1400 ) {
    if( !instance_exists( oRedS4SourceBullet ) ) {
        instance_create( 400, 300, oRedS4SourceBullet );
    }
    var lWallController = instance_create( 0, 0, oRedS4WallImpulseController );
    lWallController.WallId = -1;
    var rWallController = instance_create( 0, 0, oRedS4WallImpulseController );
    rWallController.WallId = 1;
}

if( t == 1400 || t == 1574 || t == 1749 || t = 1923 || t == 1465 || t == 1639 ) {
    scrRedS4SpawnCirlce( 65 );
} else if( t == 1815 || t == 1990 ) {
    scrRedS4SpawnCirlce( 63 );
} else if( t == 1530 || t == 1705 || t == 1878 ) {
    scrRedS4SpawnCirlce( 44 );
} else if( t == 1447 ) {
    scrRedAttachCustomSpawner( oRedS4SourceBullet, 86, scrRedS4SpawnLeheeCircle, 600 );
}

// Left lines.
if( t == 1485 || t == 1490 || t == 1495 || t == 1500 
    || t == 1658 || t == 1663 || t == 1668 || t == 1673 
    || t == 1835 || t == 1840 || t == 1845 || t == 1850 ) 
{
    scrRedS4CreateWallImpulse( -1 );
}
// Right lines.
if( t == 1404 || t == 1417 || t == 1575 || t == 1590 || t == 1755 || t == 1770 || t == 1923 || t == 1938 ) {
    scrRedS4CreateWallImpulse( 1 );
    scrRedS4CreateWallImpulse( 1 );
}
// Floor lines.
if( t == 2005 ) {
    scrRedS4CreateFloorImpulse( 350 );
    scrRedS4CreateFloorImpulse( 450 );
} else if( t == 2010 ) {
    scrRedS4CreateFloorImpulse( 250 );
    scrRedS4CreateFloorImpulse( 550 );
} else if( t == 2015 ) {
    scrRedS4CreateFloorImpulse( 150 );
    scrRedS4CreateFloorImpulse( 650 );
} else if( t == 2020 ) {
    scrRedS4CreateFloorImpulse( 50 );
    scrRedS4CreateFloorImpulse( 750 );
}

if( t == 1442 ) {
    scrRedChangeInstanceAlpha( oRedS4SourceBullet, 1, 24, scrRedTweenBackForth );
    with( oRedS4LineImpulse ) {
        Stage = 1;
    }
}

if( t >= 1447 && t < 2040 ) {
    var deltaT = ( t - 1447 ) % 172;
    var wallDuration = 24;
    if( deltaT = 0 ) {
        // Right spike wall.
        for( var blockIndex = 0; blockIndex < 18; blockIndex++ ) {
            var spikeY = blockIndex * 32;
            if( blockIndex % 2 == 1 ) {
                scrRedS4CreateSlidingSpike( 768, spikeY, 180, 1, wallDuration, sprRedAbyssSpikeLeft );
            } else {
                scrRedS4CreateSlidingSpike( 768, spikeY, 180, 0.5, wallDuration, sprRedAbyssSpikeLeft );
                scrRedS4CreateSlidingSpike( 768, spikeY + 16, 180, 0.5, wallDuration, sprRedAbyssSpikeLeft );            
            }
        }
        scrRedShakeViewX( -10, wallDuration );
        scrRedChangeInstanceAlpha( oRedRightBlock, 0, wallDuration, scrRedTweenBackForth );
    } else if( deltaT == 86 ) {
        // Left spike wall.
        for( var blockIndex = 0; blockIndex < 18; blockIndex++ ) {
            var spikeY = blockIndex * 32;
            if( blockIndex % 2 == 1 ) {
                scrRedS4CreateSlidingSpike( 0, spikeY, 0, 1, wallDuration, sprRedAbyssSpikeRight );
            } else {
                scrRedS4CreateSlidingSpike( 16, spikeY, 0, 0.5, wallDuration, sprRedAbyssSpikeRight );
                scrRedS4CreateSlidingSpike( 16, spikeY + 16, 0, 0.5, wallDuration, sprRedAbyssSpikeRight );            
            }
        }
        scrRedShakeViewX( 10, wallDuration );
        scrRedChangeInstanceAlpha( oRedLeftBlock, 0, wallDuration, scrRedTweenBackForth );
    } else if( deltaT == 168 || deltaT == 82 ) {
        scrRedChangeInstanceAlpha( oRedS4SourceBullet, 1, wallDuration, scrRedTweenBackForth );
        with( oRedS4LineImpulse ) {
            Stage = 1;
        }
        scrRedS4ClearWallImpulses();
    }
}
if( t == 2049 ) {
    var floorDuration = 38;
    // Bottom spike wall.
    for( var blockIndex = 0; blockIndex < 23; blockIndex++ ) {
        var spikeX = 32 + blockIndex * 32;
        if( blockIndex % 2 == 0 ) {
            scrRedS4CreateSlidingSpike( spikeX, 576, 90, 1, floorDuration, sprRedAbyssSpikeUp );
        } else {
            scrRedS4CreateSlidingSpike( spikeX, 576, 90, 0.5, floorDuration, sprRedAbyssSpikeUp );
            scrRedS4CreateSlidingSpike( spikeX + 16, 576, 90, 0.5, floorDuration, sprRedAbyssSpikeUp );            
        }
    }
    scrRedShakeViewY( -32, floorDuration );
    scrRedChangeInstanceAlpha( oRedFloorBlock, 0, floorDuration, scrRedTweenBackForth );
    with( oRedS4LineImpulse ) {
        Stage = 1;
    }
} else if( t == 2077 ) {
    scrRedDeactivateBullets( oRedS4SlidingSpike );
} else if( t == 2074 ) {
    scrRedDestroy( oRedS4SectorController );
    scrRedDestroy( oRedS4WallImpulseController );
    scrRedBulletFadeOut( oRedS4CircleBullet );
    scrRedDeactivateBullets( oRedS4CircleBullet );
}

