/// scrRedS7InitWallImpulses(targetX)
var targetX = argument0;

var distance = min( targetX, 800 - targetX );
distance = clamp( distance, 110, 320 );
var impulseScale = ( distance + 142 - 32 ) * 2 / sprite_get_width( sprRedLightArea );

var lImpulse1 = instance_create( 0, 0, oRedLineImpulse );
lImpulse1.Line = scrRedGetBCLine();
lImpulse1.image_xscale = impulseScale;
lImpulse1.image_blend = c_red;
lImpulse1.image_alpha = 0;
var lImpulse2 = instance_create( 0, 0, oRedLineImpulse );
lImpulse2.Line = scrRedGetBFLine();
lImpulse2.image_xscale = impulseScale;
lImpulse2.image_blend = c_red;
lImpulse2.image_alpha = 0;

var rImpulse1 = instance_create( 736, 0, oRedLineImpulse );
rImpulse1.Line = scrRedGetBCLine();
rImpulse1.image_xscale = impulseScale;
rImpulse1.image_blend = c_red;
rImpulse1.image_alpha = 0;
var rImpulse2 = instance_create( 736, 0, oRedLineImpulse );
rImpulse2.Line = scrRedGetBFLine();
rImpulse2.image_xscale = impulseScale;
rImpulse2.image_blend = c_red;
rImpulse2.image_alpha = 0;

scrRedChangeInstanceAlpha( oRedLineImpulse, 1, 20 );
