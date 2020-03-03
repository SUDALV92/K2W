var src1X = argument0;
var src1Y = argument1;
var src2X = argument2;
var src2Y = argument3;
var duration = argument4;

var src1 = instance_find( oRedS14Source, 1 );
var src2 = instance_find( oRedS14Source, 0 );
scrRedMoveInstance( src1, src1X, src1Y, duration );
scrRedMoveInstance( src2, src2X, src2Y, duration );
