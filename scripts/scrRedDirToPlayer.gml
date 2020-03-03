/// scrRedDirToPlayer( fromX, fromY )
var startX = argument0;
var startY = argument1;
if( instance_exists( objPlayer ) ) {
    return point_direction( startX, startY, objPlayer.x, objPlayer.y );
} else {
    return random( 360 );
}
