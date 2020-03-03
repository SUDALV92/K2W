/// scrRedCreateFadingImpulse(line, linePos, fadeInDuration, fadeOutDuration)
var line = argument0, linePos = argument1, fadeInDuration = argument2, fadeOutDuration = argument3;

var result = instance_create( linePos, 0, oRedFadingImpulse );
result.Line = line;
result.AlphaDelta = 1 / fadeInDuration;
result.FadeDelta = 1 / fadeOutDuration;
return result;
