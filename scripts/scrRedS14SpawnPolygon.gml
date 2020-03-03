var targetId = argument0;
var edgeCount = argument1;
var bulletPerEdge = argument2;

with( targetId ) {
    scrMakeShapes( x, y, random( 360 ), edgeCount, bulletPerEdge, 8, oRedS14PolygonBullet );
}
