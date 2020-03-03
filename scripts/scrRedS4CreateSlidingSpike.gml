/// scrRedCreateSlidingSpike( x, y, direction, scale, duration, sprite )
var spikeX = argument0;
var spikeY = argument1;
var spikeDirection = argument2;
var spikeScale = argument3;
var duration = argument4;
var sprite = argument5;

var spike = instance_create( spikeX, spikeY, oRedS4SlidingSpike );
spike.Duration = duration;
spike.direction = spikeDirection;
spike.sprite_index = sprite;
spike.image_xscale = spikeScale;
spike.image_yscale = spikeScale;
