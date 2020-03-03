var surfaceId = argument0;
var surfaceWidth = argument1;
var surfaceHeight = argument2;

if( !surface_exists( surfaceId ) ) {
    return surface_create( surfaceWidth, surfaceHeight );
} else {
    return surfaceId;
}
