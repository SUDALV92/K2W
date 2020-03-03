/// scrRedFlashScreen( color, inDuration, opt_outDuration, opt_inEasing, opt_outEasing )
var color = argument[0];
var inDuration = argument[1];
var outDuration = inDuration;
if( argument_count > 2 ) {
    outDuration = argument[2];
}
var inEasing = scrRedTweenLinear;
if( argument_count > 3 ) {
    inEasing = argument[3];
}
var outEasing = scrRedTweenLinear;
if( argument_count > 4 ) {
    outEasing = argument[4];
}

var flash = instance_create( 0, 0, oRedScreenFlash );
flash.image_blend = color;
flash.MaxAlpha = 1;
flash.InDuration = inDuration;
flash.TotalDuration = inDuration + outDuration;
flash.InEasing = inEasing;
flash.OutEasing = outEasing;

return flash;
