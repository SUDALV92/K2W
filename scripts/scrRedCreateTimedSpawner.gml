/// scrRedCreateTimedSpawner( spawnX, spawnY, spawnPeriod, spawnObject, spawnDuration )
var spawnDuration = argument4;
var spawner = scrRedCreateSpawner( argument0, argument1, argument2, argument3 );
spawner.alarm[11] = spawnDuration;
return spawner;
