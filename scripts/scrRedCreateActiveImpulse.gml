/// scrRedCreateActiveImpulse( lineId, linePos, impulseColor, impulseIntensity )

var line = argument0;
var linePos = argument1;
var impulseColor = argument2;
var impulseIntensity = argument3;

var result = instance_create( linePos, 0, oRedLineImpulse );
result.image_blend = impulseColor;
result.image_alpha = impulseIntensity;
result.Line = line;
return result;
