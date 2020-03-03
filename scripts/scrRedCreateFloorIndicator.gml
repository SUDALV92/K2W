/// scrRedCreateFloorIndicator(floorX, xScale, alpha)
var floorX = argument0, xScale = argument1, alpha = argument2;

var impulse1 = instance_create( floorX - 32, 0, oRedLineImpulse );
impulse1.Line = scrRedGetBCLine();
impulse1.image_blend = c_red;
impulse1.image_xscale = xScale;
impulse1.image_alpha = 0.0;
scrRedChangeInstanceAlpha( impulse1, alpha, 8 );

var impulse2 = instance_create( floorX - 32, 0, oRedLineImpulse );
impulse2.Line = scrRedGetBFLine();
impulse2.image_blend = c_red;
impulse2.image_xscale = xScale;
impulse2.image_alpha = 0.0;
scrRedChangeInstanceAlpha( impulse2, alpha, 8 );
