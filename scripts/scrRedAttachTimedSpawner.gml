/// scrRedAttachTimedSpawner( ownerId, spawnPeriod, spawnObject, spawnDuration )

var ownerId = argument0;
var spawnPeriod = argument1;
var spawnObject = argument2;
var spawnDuration = argument3;

with( ownerId ) {
    var spawner = instance_create( x, y, oRedAttachedSpawner );
    spawner.SpawnObject = spawnObject;
    spawner.SpawnPeriod = spawnPeriod;
    spawner.CurrentPeriod = 0;
    spawner.OwnerInstance = id;
    spawner.alarm[11] = spawnDuration;
    Spawner = spawner;
}

