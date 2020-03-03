var lineScale = 4.0;
var lineColor = c_red;

var line1 = scrRedCreateMovingImpulse( scrRedGetBCLine(), 400, 30 );
line1.image_xscale = lineScale;
line1.image_blend = lineColor;
var line2 = scrRedCreateMovingImpulse( scrRedGetBFLine(), 400, 30 );
line2.image_xscale = lineScale;
line2.image_blend = lineColor;

var line3 = scrRedCreateMovingImpulse( scrRedGetBCLine(), 400, -30 );
line3.image_xscale = lineScale;
line3.image_blend = lineColor;
var line4 = scrRedCreateMovingImpulse( scrRedGetBFLine(), 400, -30 );
line4.image_xscale = lineScale;
line4.image_blend = lineColor;
