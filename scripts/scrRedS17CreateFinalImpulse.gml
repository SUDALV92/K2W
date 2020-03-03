var lineId = argument0;
var pos = argument1;
var scale = argument2;

var impulse = scrRedCreateActiveImpulse( lineId, pos, c_red, 0 );
impulse.image_xscale = scale;
