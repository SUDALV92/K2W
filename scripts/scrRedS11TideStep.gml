/// scrRedS11TideStep(t)
var t = argument0;

if( t == 5575 ) {
    scrRedS11CreateTideSpawner( 820, 180, 7, 18, 71 );
} else if( t == 5661 ) {
} else if( t == 5720 ) {
    scrRedDestroy( oRedScriptSpawner );
} else if( t == 5748 ) {
    scrRedS11CreateTideSpawner( -20, 0, 7, 150, 191 );
} else if( t == 5835 ) {

} else if( t == 5922 ) {
    scrRedDestroy( oRedScriptSpawner );
    scrRedS11CreateTideSpawner( 820, 180, 15, 18, 71 );
    scrRedS11CreateTideSpawner( -20, 0, 15, 150, 191 );
} else if( t == 6008 ) {
} else if( t == 6096 - 25 ) {
    scrRedDestroy( oRedScriptSpawner );
} else if( t == 6183 ) {
} else if( t == 6270 ) {
} 
