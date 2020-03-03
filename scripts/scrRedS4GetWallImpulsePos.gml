var wallId = argument0;

with( oRedS4WallImpulseController ) {
    if( WallId == wallId ) {
        var startPos = irandom_range( 0, ImpulseCount - 1 );
        var pos = startPos;
        while( IsTaken[pos] ) {
            pos++;
            if( pos >= ImpulseCount ) {
                pos = 0;
            }
            if( pos == startPos ) {
                show_error( "Wall positions overflow", false );
                return 0;
            }
        }
        IsTaken[pos] = true;
        return ImpulsePositions[pos];
    }
}
