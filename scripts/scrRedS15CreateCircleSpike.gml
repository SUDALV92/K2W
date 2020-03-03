var spikeX = argument0;
var spikeY = argument1;
var spikeDir = argument2;
var spikeCurve = argument3;
var spikeSpeed = argument4;

var spike = instance_create( spikeX, spikeY, oRedS15RandomWallSpike );
spike.speed = spikeSpeed;
spike.direction = spikeDir;
spike.image_angle = spikeDir;
spike.CurveDir = spikeCurve;
