var wallId = argument0;

var wallPos = scrRedS4GetWallImpulsePos( wallId );
with( oRedLightLine ) {
    if( WallId == wallId ) { 
        var impulse = instance_create( wallPos, 0, oRedS4LineImpulse );
        impulse.Line = id;
    }    
}
