var lineScale = 4.0;
var lineColor = c_red;
var lineSpeed = 15;

var line1 = scrRedCreateMovingImpulse( scrRedGetBCLine(), 368, lineSpeed );
line1.image_xscale = lineScale;
line1.image_blend = lineColor;
var line2 = scrRedCreateMovingImpulse( scrRedGetBFLine(), 368, lineSpeed );
line2.image_xscale = lineScale;
line2.image_blend = lineColor;

var line3 = scrRedCreateMovingImpulse( scrRedGetBCLine(), 368, -lineSpeed );
line3.image_xscale = lineScale;
line3.image_blend = lineColor;
var line4 = scrRedCreateMovingImpulse( scrRedGetBFLine(), 368, -lineSpeed );
line4.image_xscale = lineScale;
line4.image_blend = lineColor;
