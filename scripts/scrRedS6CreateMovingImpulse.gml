/// scrRedS6CreateMovingImpulse(startX, moveSpeed)
var startX = argument0, moveSpeed = argument1;

var impulse1 = scrRedCreateMovingImpulse( scrRedGetBCLine(), startX, moveSpeed );
impulse1.image_blend = c_red;
impulse1.image_xscale = 32;
var impulse2 = scrRedCreateMovingImpulse( scrRedGetBFLine(), startX, moveSpeed );
impulse2.image_blend = c_red;
impulse2.image_xscale = 32;
