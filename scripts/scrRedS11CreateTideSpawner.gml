/// scrRedS11CreateTideSpawner(spawnX, mainDir, spawnPeriod, hueMin, hueMax)
var spawnX = argument0, mainDir = argument1, spawnPeriod = argument2, hueMin = argument3, hueMax = argument4;

var spawner = scrRedCreateCustomSpawner( spawnX, 0, spawnPeriod, scrRedS11SpawnTideBullet );
spawner.DirIndex = 0;
spawner.MainSpawnDir = mainDir;
spawner.HueMin = hueMin;
spawner.HueMax = hueMax;

