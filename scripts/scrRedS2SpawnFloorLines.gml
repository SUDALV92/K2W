var lineColor = LineColor

var lineSpeed = 10;
var lineScale = 3;

var line1 = instance_create( 0, 0, oRedS2Impulse );
line1.image_blend = lineColor;
line1.image_xscale = lineScale;
line1.Line = scrRedGetBCLine();
line1.speed = lineSpeed;
var line2 = instance_create( 800, 0, oRedS2Impulse );
line2.image_blend = lineColor;
line2.image_xscale = lineScale;
line2.Line = scrRedGetBCLine();
line2.speed = -lineSpeed;

var line3 = instance_create( 0, 0, oRedS2Impulse );
line3.image_blend = lineColor;
line3.image_xscale = lineScale;
line3.Line = scrRedGetBFLine();
line3.speed = lineSpeed;
var line4 = instance_create( 800, 0, oRedS2Impulse );
line4.image_blend = lineColor;
line4.image_xscale = lineScale;
line4.Line = scrRedGetBFLine();
line4.speed = -lineSpeed;

var line5 = scrRedCreateMovingImpulse( scrRedGetLCLine(), 608, -lineSpeed );
line5.image_blend = lineColor;
line5.image_xscale = lineScale;
var line6 = scrRedCreateMovingImpulse( scrRedGetLFLine(), 608, -lineSpeed );
line6.image_blend = lineColor;
line6.image_xscale = lineScale;
var line7 = scrRedCreateMovingImpulse( scrRedGetRCLine(), 608, -lineSpeed );
line7.image_blend = lineColor;
line7.image_xscale = lineScale;
var line8 = scrRedCreateMovingImpulse( scrRedGetRFLine(), 608, -lineSpeed );
line8.image_blend = lineColor;
line8.image_xscale = lineScale;
