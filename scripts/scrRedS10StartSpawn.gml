/// scrRedS10StartSpawn(dir, period, hueMin, hueMax)
var dir = argument0, period = argument1, hueMin = argument2, hueMax = argument3;

var spawner = scrRedCreateCustomSpawner( 0, 0, period, scrRedS10SpawnDiagonal );
spawner.SpawnDir = dir;
spawner.HueMin = hueMin;
spawner.HueMax = hueMax;
