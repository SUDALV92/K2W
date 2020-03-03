var startX = argument0;
var startY = argument1;
var lineDir = argument2;
var spawnPeriod = argument3;
var lineSpeed = argument4;
var imageIndex1 = argument5;
var imageIndex2 = argument6;

var seed1 = instance_create( startX, startY, oRedS2SeedBullet );
seed1.image_index = imageIndex1;
seed1.StartDirection = lineDir;
seed1.StepDelta = lineSpeed;
seed1.Amplitude = 30;
scrRedAttachSpawner( seed1, spawnPeriod, oRedS2TrailBullet );

var seed2 = instance_create( startX, startY, oRedS2SeedBullet );
seed2.image_index = imageIndex2;
seed2.StartDirection = lineDir;
seed2.StepDelta = lineSpeed;
seed2.Amplitude = -30;
scrRedAttachSpawner( seed2, spawnPeriod, oRedS2TrailBullet );
