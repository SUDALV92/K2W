/// scrRedS10WaterfallStep(t)
var t = argument0;

if( t == 4885 - 25 ) {
    with( oRedAbyssBackground ) {
        sprite_index = sprRedAbyssBackground;
    }
    scrRedS10StartSpawn( 225, 4.5, 150, 191 );
} else if( t == 4964 ) {
} else if( t == 5052 - 25 ) {
    scrRedDestroy( oRedBaseSpawner );
    scrRedS10StartSpawn( -45, 4.5, 18, 71 );
} else if( t == 5139 ) {
} else if( t == 5226 - 25 ) {
    scrRedDestroy( oRedBaseSpawner );
    scrRedS10StartSpawn( 225, 8, 150, 191 );    
    scrRedS10StartSpawn( -45, 8, 18, 71 );    
} else if( t == 5313 ) {

} else if( t == 5400 - 25 ) {
    scrRedDestroy( oRedBaseSpawner );
    scrRedS10StartSpawn( 225, 12, 150, 191 );    
    scrRedS10StartSpawn( -45, 12, 18, 71 ); 
    scrRedCreateSpawner( 0, 0, 6, oRedS10VerticalBullet );
} else if( t == 5487 ) {
    scrRedDestroy( oRedBaseSpawner );
}
