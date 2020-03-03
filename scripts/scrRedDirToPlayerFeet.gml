/// scrRedDirToPlayerFeet( fromX, fromY )
var startX = argument0;
var startY = argument1;
if( !instance_exists( objPlayer ) ) {
    return random( 360 );   
} else {
    return point_direction( startX, startY, objPlayer.x, objPlayer.y + 9 );
}
