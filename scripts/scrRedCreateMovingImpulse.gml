/// scrRedCreateMovingImpulse( lineId, linePos, moveSpeed )

var line = argument0;
var linePos = argument1;
var moveSpeed = argument2;

var result = instance_create( linePos, 0, oRedMovingImpulse );
result.Line = line;
result.speed = moveSpeed;
return result;
